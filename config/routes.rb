Rails.application.routes.draw do
  resources :links
  resources :leads, except: [:show, :edit]
  root to: 'static_pages#welcome'
  get 'cancel', to: 'static_pages#cancel'
  get 'completed', to: 'static_pages#completed'
  get 'welcome', to: 'static_pages#welcome'
  get 'for_press', to: 'static_pages#for_press'
  get 'faq', to: 'static_pages#faq'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
