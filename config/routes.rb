Rails.application.routes.draw do
  get '/profile/:id' => 'application#show'
  get '/create_scientist' => 'application#create'
  get '/new_scientist/' => 'application#new_sci'
 # get '/profile/1' => 'application#first'
 # get '/profile/2' => 'application#second'
 # get '/profile/3' => 'application#third'
end
