Rails.application.routes.draw do

  get     '/messages',                to: 'messages#index'
  get     '/messages/new',            to: 'messages#new'
  get     '/messages/:id',            to: 'messages#show',          constraints: { id: /[0-9]+/ }
  post    '/messages',                to: 'messages#create'
  delete  '/messages/:id',            to: 'messages#destroy',       constraints: { id: /[0-9]+/ }

  get     '/settings',                to: 'settings#index'
  get     '/settings/new',            to: 'settings#new'
  get     '/settings/:id',            to: 'settings#show',          constraints: { id: /[0-9]+/ }
  post    '/settings',                to: 'settings#create'
  get     '/settings/:id/edit',       to: 'settings#edit'
  patch   '/settings/:id',            to: 'settings#update',        constraints: { id: /[0-9]+/ }
  delete  '/settings/:id',            to: 'settings#destroy',       constraints: { id: /[0-9]+/ }

  get     '/links',                to: 'links#index'
  get     '/links/new',            to: 'links#new'
  get     '/links/:id',            to: 'links#show',          constraints: { id: /[0-9]+/ }
  post    '/links',                to: 'links#create'
  get     '/links/:id/edit',       to: 'links#edit'
  patch   '/links/:id',            to: 'links#update',        constraints: { id: /[0-9]+/ }
  delete  '/links/:id',            to: 'links#destroy',       constraints: { id: /[0-9]+/ }

  get     '/technologies',                to: 'technologies#index'
  get     '/technologies/new',            to: 'technologies#new'
  get     '/technologies/:id',            to: 'technologies#show',          constraints: { id: /[0-9]+/ }
  post    '/technologies',                to: 'technologies#create'
  get     '/technologies/:id/edit',       to: 'technologies#edit'
  patch   '/technologies/:id',            to: 'technologies#update',        constraints: { id: /[0-9]+/ }
  delete  '/technologies/:id',            to: 'technologies#destroy',       constraints: { id: /[0-9]+/ }

  get     '/projects',                to: 'projects#index'
  get     '/projects/new',            to: 'projects#new'
  get     '/projects/:id',            to: 'projects#show',          constraints: { id: /[0-9]+/ }
  post    '/projects',                to: 'projects#create'
  get     '/projects/:id/edit',       to: 'projects#edit'
  patch   '/projects/:id',            to: 'projects#update',        constraints: { id: /[0-9]+/ }
  delete  '/projects/:id',            to: 'projects#destroy',       constraints: { id: /[0-9]+/ }


  get '/portfolio', to: 'statics#portfolio'
  get '/competences', to: 'statics#competences'
  get '/contact', to: 'messages#new'
  
  get '/admins', to: 'admins#home'

  get     '/login',                   to: 'sessions#new'
  post    '/login',                   to: 'sessions#create'
  delete  '/logout',                  to: 'sessions#destroy'

  get '/', to: 'statics#home'
  root 'statics#home'

end