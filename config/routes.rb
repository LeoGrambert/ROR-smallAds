Rails.application.routes.draw do
  root 'smallads#home'

  get '/advertisement/:id' => 'smallads#show'

  get '/advertisements/new' => 'smallads#add'

  post '/advertisements/new' => 'smallads#check'

  patch '/advertisement/update/:id' => 'smallads#update'

  patch '/advertisement/delete/:id' => 'smallads#delete'

  get 'users/new' => 'users#new'

  post 'users/new' => 'users#create'

  get 'users/login' => 'users#login'

  post 'users/login' => 'users#check'

  get 'users/logout' => 'users#logout'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
