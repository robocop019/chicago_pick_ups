Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch 'users/:id' => 'users#update'
    delete 'users/:id' => 'users#destroy'

    get 'games' => 'games#index'
    post 'games' => 'games#create'
    get 'games/:id' => 'games#show'
    patch 'games/:id' => 'games#update'
    delete 'games/:id' => 'games#destroy'

    get 'comments' => 'comments#index'
    post 'comments' => 'comments#create'
    get 'comments/:id' => 'comments#show'
    patch 'comments/:id' => 'comments#update'
    delete 'comments/:id' => 'comments#destroy'

    get 'messages' => 'messages#index'
    post 'messages' => 'messages#create'
    get 'messages/:id' => 'messages#show'
    delete 'messages/:id' => 'messages#destroy'

    get 'friendships' => 'friendships#index'
    post 'friendships' => 'friendships#create'
    delete 'friendships/:id' => 'friendships#destroy'

    get 'interests' => 'interests#index'
    post 'interests' => 'interests#create'
    delete 'interests' => 'interests#destory'

    get 'parks' => 'parks#index'
    get 'parks/:id' => 'parks#show'

    post '/sessions' => 'sessions#create'
  end
end
