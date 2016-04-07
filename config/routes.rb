Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  get 'company/show' => 'company#show'
  get 'inquiry/index' => 'inquiry#index'
  post 'inquiry/index' => 'inquiry#index'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'
end