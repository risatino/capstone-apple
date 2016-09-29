Rails.application.routes.draw do
 get '/documents' => 'documents#index'
 
 get '/documents/new' => 'documents#new'
 post '/documents' => 'documents#create'
 
 get '/documents/:id' => 'documents#show'
 
 get 'documents/:id/edit' => 'documents#edit'
 patch '/documents/:id' => 'documents#update'

 delete '/documents/:id' => 'documents#destroy'
end
