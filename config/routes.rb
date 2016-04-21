Rails.application.routes.draw do
  resources :comments

  get 'users/index'

  get 'users/show'

  devise_for :users, controllers: {
      sessions: "users/sessions",
      registrations: "users/registrations",
      passwords: "users/passwords",
      omniauth_callbacks: "users/omniauth_callbacks"
  }

  get 'company/show' => 'company#show'
  get 'about' => 'about#company_overview'

  get 'inquiry/index' => 'inquiry#index'
  get 'inquiry/list' => 'inquiry#list'
  get 'inquiry/show' => 'inquiry#show'
  get 'inquiry/receive_email' => 'inquiry#receive_email'
  post 'inquiry/index' => 'inquiry#index'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'

  resources :blogs do
    resources :comments
  end

  resources :users, only: [:index, :show, :edit, :update]

  root 'top#index'
end
