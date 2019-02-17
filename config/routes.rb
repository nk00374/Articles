Rails.application.routes.draw do
  get 'articles/article1'
  get 'articles/article2'
  get 'articles/article3'
  get 'articles/article4'
  get 'articles/article5'
  root 'articles#article1'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
