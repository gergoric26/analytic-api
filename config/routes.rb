Rails.application.routes.draw do
  get 'registered_applications/index'

  get 'registered_applications/show'

  get 'registered_applications/new'

  get 'registered_applications/edit'

  get 'welcome/index'

  devise_for :users
  
  root 'welcome#index'

 
end
