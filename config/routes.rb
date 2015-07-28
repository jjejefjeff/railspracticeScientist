Rails.application.routes.draw do
  get '/profile/:id' => 'scientists#show'
  get '/create_scientist' => 'scientists#create'
  get '/new_scientist' => 'scientists#new_sci'
  get '/profile/:id/edit' => 'scientists#edit'
  get '/update_scientist/:id' => 'scientists#update_scientist'
  get '/profile/:id/destroy' => 'scientists#destroy'
  get '/profile' => 'scientists#index'
 # get '/profile/1' => 'application#first'
 # get '/profile/2' => 'application#second'
 # get '/profile/3' => 'application#third'
end
