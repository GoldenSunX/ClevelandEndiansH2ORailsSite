#Created (Cole Albers, 11/19/2016): Created the initial route definitions.
#Updated (Cole Albers, 11/27/16): Changed root. Added static_pages routes. Added contact#find route.
#Updated (Sam Yinger, 11/30/2016): Added and changed the data and filter paths
#Update (David Sinchok, 12/01/2016): updated 'comments' route to point to the correct page
Rails.application.routes.draw do

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      confirmations: 'users/confirmations',
      passwords: 'users/passwords',
      registrations: 'users/registrations',
      unlocks: 'users/unlocks',
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'search', to: 'static_pages#search'
  get 'find', to: 'contact#find'
  get 'data', to: 'contact#index'
  get 'filter', to: 'contact#filter'
  get 'prayers', to: 'contact#index'
  get 'comments', to: 'contact#index'
  get 'signed_out', to: 'static_pages#signed_out'
  delete '/contact/prayers/:id', to: 'contact#del_prayer'
  delete '/contact/comments/:id', to: 'contact#del_comment'
  resources :contact
end
