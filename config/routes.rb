Rails.application.routes.draw do
  
  
  root to: 'homes#top'
  get 'admin' => 'admin/homes#top'
  get '/homes/about' => 'homes#about', as: 'about'
  get 'searches/search'
  patch "content_reviews/:id/edit" => "content_reviews#update"
  
  
  # 顧客側の登録とログイン
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  
  # 管理者側のログイン
  devise_for :admins, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }
  
  resources :users, only: [:index, :show, :edit, :update]
  
  # content_reviewのidを取得する親子関係
  resources :content_reviews do
    resource :favorites, only: [:create, :destroy]
    resources :reviews, only: [:create, :index]
    resources :content_comments, only: [:create, :destroy]
  end
    
  namespace :admin do
    get 'content_comments/destroy'
    resources :content_reviews, only: [:index, :show, :edit, :create, :destroy]
  end
  
 
  
  
  
    
  
  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
