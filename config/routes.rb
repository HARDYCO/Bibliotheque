Rails.application.routes.draw do
  get 'livres/listelivre'
  root to:'pages#home'
  get '/salut', to: 'pages#salut' ,as: 'slt'
  get'/livres', to:'livres#index', as: 'admview'
  get '/recherche', to:'livres#cherchelivre', as: 'recherche'
  get '/api', to:'livres#api', as: 'api'
  get'/Llivres', to:'livres#listelivre', as: 'Llivres'
  get'/inscription', to: 'users#new', as: 'inscription'
  get'/profil', to:'users#edit', as:'profil'
  get '/rechercheLivre', to: 'livres#recherchelivre'
  patch'/profil', to:'user#update'

  resources :livres
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
