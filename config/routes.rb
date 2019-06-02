Rails.application.routes.draw do
  resources :links
  resources :leads, except: [:show, :edit]
  root to: 'static_pages#welcome'
  get 'cancel', to: 'static_pages#cancel'
  get 'completed', to: 'static_pages#completed'
  get 'welcome', to: 'static_pages#welcome'
  get 'faq', to: 'static_pages#faq'
  get 'for_press', to: 'static_pages#for_press'
  get 'features', to: 'static_pages#features'
  get 'pricing', to: 'static_pages#pricing'
  get 'about_us', to: 'static_pages#about_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
