module Api
  module V1
    class MarketStatus
      def self.verify_season(year)
        season = Season.find{|s| s.year == year}
        if season.nil?
          # gotta update the dispute months
          previous_season = Season.find{|s| s.year == (year - 1)}
          unless previous_season.nil?
            previous_season.finished = true
          end
          season = Season.create(year: year, finished: false)
        end
        return season
      end

      def self.verify_round(number, season)
       round = Round.find{|r| r.season.id == season.id and r.number == number}
       if round.nil?
         ## verify if its golden (on seasons)
         golden = season.golden_rounds.include?(number)
         ## verify dispute month (if configured )
         dispute = DisputeMonth.find{|d| d.season_id == season.id and d.dispute_rounds.include?(number)}
         round = Round.create(number: number, season: season, dispute_month: dispute, golden: golden, finished: false)
         ## new battles
         previous_round = Round.find{|r| r.number == number-1 and finished == false}
         FinalScore.perform(previous_round) unless previous_round.nil?
         ## finish previous battles
         ## verify winners
         ## update rankings
       end
       return round
      end

      def self.perform
        market_status = Connection.market_status
        season = verify_season(market_status["temporada"])
        current_round = market_status["rodada_atual"]
        round = verify_round(current_round, season)
        unless market_status["game_over"]
          #verifica se já tem temporada
          if market_status["status_mercado"] == 2 # 16
            PartialScore.perform
          end
          if market_status["status_mercado"] == 18 # ABERTO 17
            # o que roda uma vez, faz na criação do round
          end
        end
      end
    end
  end
end
