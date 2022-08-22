Rails.application.routes.draw do
  post '/principals', to: 'principals#create' 
  get '/principals/new', to: 'principals#new', as: :new_noticia
  get '/principals', to: 'principals#index'
  get '/principals/:id', to: 'principals#show', as: :noticia
end
