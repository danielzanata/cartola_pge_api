Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  namespace :api do
    namespace :v1 do
      resources :scores
      resources :battles
      resources :dispute_months
      resources :rounds
      resources :teams
      resources :players
      resources :seasons

      get 'league' => 'dispute_months#league_points'
      get 'partials' => 'rounds#partials'
      get 'partials/:id' => 'rounds#partial'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
