Rails.application.routes.draw do
  
  get '/homes/about' => 'homes#about', as: 'about'
  root to: 'homes#top'
  
  resources :content_reviews
  
  
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  
    
  devise_for :admins, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }
  
  
  
  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
