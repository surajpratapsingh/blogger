Rails.application.routes.draw do
  resources :venues
  resources :article1s do
  	resources :comments
  end
  resources :tags

  resources :posts
  resources :event_categories

  root "index#show"

  get "/about-us", to: "index#about_us"
  get "/contacts", to: "index#contact"
  get "/help", to: "index#help"


	namespace :api do
		namespace :v1 do
	     	resources :article1s
	    end
	end
end