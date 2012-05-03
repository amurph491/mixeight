Mixeight::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root to: 'static_pages#home'
  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  
  match '/songs' , to: 'songs#index'
  match '/upload', to: 'songs#upload'
  match '/delete', to: 'songs#delete'
  match '/upvote', to: 'songs#upvote'
  match '/downvote', to: 'songs#downvote'
  
  
end
