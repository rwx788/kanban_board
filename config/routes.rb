# frozen_string_literal: true

Rails.application.routes.draw do
    get 'tickets/index'
    root to: 'tickets#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :tickets do
        collection do
            patch :update_list
        end
    end
end
