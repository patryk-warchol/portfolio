Rails.application.routes.draw do

  get '/', to: 'statics#home'

  get '/portfolio', to: 'statics#portfolio'


  get '/competences', to: 'statics#competences'

  get '/contact', to: 'statics#contact'

  get 'admins/home'

  get     '/login',                   to: 'sessions#new'
  post    '/login',                   to: 'sessions#create'
  delete  '/logout',                  to: 'sessions#destroy'

  root 'statics#home'

end

