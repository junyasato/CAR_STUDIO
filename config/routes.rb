Rails.application.routes.draw do
  devise_for :users
   root 'categories#index'

   get  '/articles/add_text'   => 'articles#add_text'
   get  '/articles/add_header' => 'articles#add_header'
   get  '/articles/add_quote'  => 'articles#add_quote'
   get  '/articles/add_button' => 'articles#add_button'
   get  '/articles/add_image'  => 'articles#add_image'
   get  '/articles/save'       => 'articles#save'

   get  '/items/destroy'       => 'items#destroy'
   resources :articles
   resources :categories
   resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
