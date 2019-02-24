Rails.application.routes.draw do
  patch '/article#1/:id', to: 'rankings#updateRead', as: 'article_read'	
  get '/stats', to:'rankings#stats', as: 'stats'
  get '/article#1', to:'articles#article1', as: 'article1'
  get '/article#2', to:'articles#article2', as: 'article2'
  get '/article#3', to:'articles#article3', as: 'article3'
  get '/article#4', to:'articles#article4', as: 'article4'
  get '/article#5', to:'articles#article5', as: 'article5'
  root 'articles#article1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
