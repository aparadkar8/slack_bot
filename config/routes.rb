Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/slack", to: "slack#index"
  post '/slack/payload', to: 'slack#handle_payload'
end
