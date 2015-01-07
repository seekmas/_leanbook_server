Rails.application.routes.draw do
  resources :tags

  devise_for :admins
  devise_for :users

  mount Ckeditor::Engine => '/ckeditor'



  resources :categories

  scope '/api' do

    resources :comments
    resources :articles
    resources :media

    match 'comments', to: 'comments#create', via: [:options]

    match 'articles', to: 'articles#index', via: [:options]
    match 'articles/:id', to: 'articles#show', via: [:options]

    match 'media', to: 'media#index', via: [:options]
    match 'media/:id', to: 'media#show', via: [:options]

  end





  root 'default#index'

end
