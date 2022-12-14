Rails.application.routes.draw do
  
  # 顧客側の登録とログイン
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  
  # 管理者側のログイン
  devise_for :admins, skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }
  
  get '/homes/about' => 'homes#about', as: 'about'
  root to: 'homes#top'
  
  # content_reviewのidを取得する親子関係
  resources :content_reviews do
  patch "content_reviews/:id/edit" => "content_reviews#update"
    resource :favorites, only: [:create, :destroy]
    resources :reviews, only: [:index, :create]
    resources :content_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:index, :show, :edit, :update]
  
  
    
  
  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
