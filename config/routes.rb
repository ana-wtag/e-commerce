Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmls
  Rails.application.routes.draw do
  devise_for :users
    # root to: defines which controller action will handle requests to the root path
    #in this case, the route will be http://localhost:3000
    # The requests to this route will be handled by the index action in the home controller
    root to: "home#index" 
  end
end
