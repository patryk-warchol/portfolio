Rails.application.routes.draw do


  get     '/projects',                to: 'projects#index'
  get     '/projects/new',            to: 'projects#new'
  get     '/projects/:id',            to: 'projects#show',          constraints: { id: /[0-9]+/ }
  post    '/projects',                to: 'projects#create'
  get     '/projects/:id/edit',       to: 'projects#edit'
  patch   '/projects/:id',            to: 'projects#update',        constraints: { id: /[0-9]+/ }
  delete  '/projects/:id',            to: 'projects#destroy',       constraints: { id: /[0-9]+/ }


  get '/portfolio', to: 'statics#portfolio'

  get '/competences', to: 'statics#competences'

  get '/contact', to: 'statics#contact'

  get 'admins/home'

  get     '/login',                   to: 'sessions#new'
  post    '/login',                   to: 'sessions#create'
  delete  '/logout',                  to: 'sessions#destroy'

  get '/', to: 'statics#home'
  root 'statics#home'

end