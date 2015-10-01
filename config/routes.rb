Rails.application.routes.draw do

    resources :voters do
     get "delete"
    end
    
  root to: 'voters#index'

end
