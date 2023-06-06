Rails.application.routes.draw do
  resources :followed_topics
  resources :followed_users
  resources :topics
  resources :questions
  root 'questions#index'
  devise_for :users

  resources :questions, only: [:index, :show] do
    resources :answers
  end

  resources :users do
    member do
      post 'follow_user'
    end
  end

  resources :topics do
    member do
      post 'follow_topic'
    end
  end
end
