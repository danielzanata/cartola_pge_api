module Api
  module V1
    class AwardWorker

      def self.award_champions(season)
        prizes = season.championship_prize
        second_half_prize = season.second_half_prize
        team_scores = season.scores.joins(:team).where("teams.active is true").group_by{|s| s.team}
        team_scores = team_scores.collect{|ts| {team_id: ts[0].id, scores: ts[1].sum(&:final_score)}}.sort_by{|x| x[:scores]}.last(3).reverse
        second_half_scores = season.scores.joins(:team).where("teams.active is true").select{|ts| ts.round.number >= 19}.group_by{|s| s.team}
        second_half_scores = second_half_scores.collect{|ts| {team_id: ts[0].id, scores: ts[1].sum(&:final_score)}}.sort_by{|x| x[:scores]}.last(3).reverse
        (0..2).to_a.each do |i|
          # Second Turn
          x = Award.create(team_id: second_half_scores[i][:team_id], season: season, award_type: 4, position: i+1, prize: second_half_prize[i] )
          # Championship
          Award.create(team_id: team_scores[i][:team_id], season: season, award_type: 0, position: i+1, prize: prizes[i] )
        end
      end

      def self.award_first_turn

      end

      def self.award_golden(round)

      end

      def self.award_month(dispute)

      end

      def self.award_league(dispute)

      end

      def self.award_currency(dispute)

      end

      def self.perform(round)
        dispute = round.dispute_month
        # Championship AND  second_turn
        award_champions(round.season) if round.number == 38
        # First turn (check if its in the middle of the month)
        award_first_turn if round.number == 19

        ## Golden round
        award_round(round) if round.golden

        # Monthly awards:
        if dispute.dispute_rounds.last == round.number
          ## Month
          award_month(dispute)
          ## League
          award_league(dispute)
          ## Patrimônio
          award_currency(dispute)
        end
      end
    end
  end
end
