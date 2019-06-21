Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    get '/users/new' => 'users#new'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    get 'users/:id/edit' => 'users#edit'
    patch 'users/:id' => 'users#update'
    delete 'users/:id' => 'users#destroy'

    get 'games' => 'games#index'
    get 'games/new' => 'games#new'
    post 'games' => 'games#create'
    get 'games/:id' => 'games#show'
    get 'games/:id/edit' => 'games#edit'
    patch 'games/:id' => 'games#update'
    delete 'games/:id' => 'games#destroy'

    get 'comments' => 'comments#index'
    get 'comments/new' => 'comments#new'
    post 'comments' => 'comments#create'
    get 'comments/:id' => 'comments#show'
    get 'comments/:id/edit' => 'comments#edit'
    patch 'comments/:id' => 'comments#update'
    delete 'comments/:id' => 'comments#destroy'

    get 'messages' => 'messages#index'
    get 'messages/new' => 'messages#new'
    post 'messages' => 'messages#create'
    get 'messages/:id' => 'messages#show'
    delete 'messages/:id' => 'messages#destroy'

    get 'friendships' => 'friendships#index'
    get 'friendships/new' => 'friendships#new'
    post 'friendships' => 'friendships#crete'
    delete 'friendships/:id' => 'friendships#destroy'

    get 'interests' => 'interests#index'
    get 'interests/new' => 'interests#new'
    post 'interests' => 'interests#create'
    delete 'interests' => 'interests#destory'

    get 'parks' => 'parks#index'
    get 'parks/:id' => 'parks#show'
  end
end
