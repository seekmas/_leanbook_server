Rails.application.routes.draw do
  resources :tags

  devise_for :admins
  devise_for :users

  mount Ckeditor::Engine => '/ckeditor'





  scope '/api' do
    resources :comments
    resources :articles
    resources :media
    resources :categories

    match 'comments', to: 'comments#create', via: [:options]

    match 'articles', to: 'articles#index', via: [:options]
    match 'articles/:id', to: 'articles#show', via: [:options]

    match 'media', to: 'media#index', via: [:options]
    match 'media/:id', to: 'media#show', via: [:options]

    match 'categories', to: 'categories#index', via: [:options]
    match 'categories/:id', to: 'categories#show', via: [:options]

    get 'articles_by_category/:id' , to: 'articles#find_by_category', via: [:options]
  end


  get 'catalog' , to: 'default#catalog'

  get 'catalog/:id' , to: 'default#list_all'



  root 'default#index'

end
