Rails.application.routes.draw do
  root 'smallads#home'

  get '/show/id' => 'smallads#show'

  get '/add' => 'smallads#add'

  get '/update/id' => 'smallads#update'

  get '/delete/id' => 'smallads#delete'

  get '/users/new' => 'smallads#newUser'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
