Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
  	#nests comments within the article
  	resources :comments
    
    collection do
      get :search #creates a new path for searching
    end

  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
