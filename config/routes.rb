Rails.application.routes.draw do
  get 'tickets/index'
  root to: "tickets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
