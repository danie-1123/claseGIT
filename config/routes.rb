Rails.application.routes.draw do
 resources :profesores
  devise_for :users
  resources :articulos
    resources :articulos do
        collection do
          match 'search' => 'articulos#search', via: [:get, :post], as: :search
         end
  end


  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/contact'

  get 'static_pages/about'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
 match '/home', to: 'static_pages#home',  via: 'get'
 match '/help',    to: 'static_pages#help',  via: 'get'
 match '/about',   to: 'static_pages#about',  via: 'get'
 match '/contact', to: 'static_pages#contact',  via: 'get'

 root :to => 'static_pages#home'
end
