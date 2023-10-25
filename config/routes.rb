Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'subjects/japanese' => 'subjects#japanese'
  get 'subjects/math' => 'subjects#math'
  get 'subjects/english' => 'subjects#english'
  get 'subjects/society' => 'subjects#society'
  get 'subjects/science' => 'subjects#science'
  get 'subjects/others' => 'subjects#others'
 
  
  get 'subjects/index'  => 'subjects#index'
  get 'subjects/new'  => 'subjects#new'
  post 'subjects/new'  => 'subjects#create'

  resources :subjects do
  resources :comments, only: [:create]
  end
  root 'subjects#index'

   


  
end
