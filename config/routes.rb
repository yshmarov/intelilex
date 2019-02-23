Rails.application.routes.draw do
  root to: 'static_pages#welcome'
  get 'cancel', to: 'static_pages#cancel'
  get 'completed', to: 'static_pages#completed'
  get 'welcome', to: 'static_pages#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
