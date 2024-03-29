Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :expenses, only: [:index, :create]
        resources :sub_expense_categories, only: [:index]
      end
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
    end
  end
end
