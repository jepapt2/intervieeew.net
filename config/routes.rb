Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'users/registrations' } do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end
  get 'toppages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users, only: [:show]
  get '/users/:id/a', to:'users#answers', as: 'users_a'
  get '/users/:id/q', to:'users#questions', as: 'users_q'
  get '/users/:id/fav', to:'users#favorites', as: 'users_f'
  get '/questions', to:'questions#index'
  get '/q/new', to: 'questions#new'
  post '/q/confirm', to: 'questions#confirm'
  post '/q', to: 'questions#create', as: 'qs'
  get '/q/:id', to: 'questions#show', as: 'q_show'
  get '/q/edit/:id', to: 'questions#edit', as: 'q_edit'
  patch '/q/edit/:id', to: 'questions#update', as: 'q_update'
  delete '/q/:id', to: 'questions#destroy', as: 'q_destroy'
  # get '/a', to:'answers#index'
  get '/:id/a', to: 'answers#new', as: 'a_new'
  post '/:id/a_confirm', to: 'answers#confirm', as: 'a_confirm'
  post '/:id/a', to: 'answers#create', as: 'a_create'
  get '/a/:id', to: 'answers#show', as: 'a_show'
  get '/a/edit/:id', to: 'answers#edit', as: 'a_edit'
  patch '/a/edit/:id', to: 'answers#update', as: 'a_update'
  delete '/a/:id', to: 'answers#destroy', as: 'a_destroy'
  # post '/a/:id/favorites', to: 'favorites#create', as: 'favorite_create'
  # delete '/a/:id/favorites', to: 'favorites#destroy', as: 'favorite_destroy'
  resources :answers, only: [:index] do
    resource :favorites, only: [:create, :destroy]
  end
end