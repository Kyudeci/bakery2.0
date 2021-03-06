Rails.application.routes.draw do
  resources :line_items
  resources :cookies
  resources :carts
  get 'carts/index'
  root to: "pages#home"
  get '/main' => "pages#main"
  get '/cookie'=> "pages#cookie"
  get '/cake' => "pages#cake"
  get '/cupcake' => "pages#cupcake"
  post '/pages/home' => "pages#create"
  post '/cookie' => 'pages#create'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end
  # get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  # delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  # get "/sign_up" => "clearance/users#new", as: "sign_up"
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
