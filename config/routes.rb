Rails.application.routes.draw do
  resources :expenses
  resources :incomes
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/bilans/:month", to: "dashboard#monthly"
  get "/dashboard", to: "dashboard#index"

  root to: "dashboard#index"
end
