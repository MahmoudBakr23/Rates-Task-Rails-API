Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    registrations: :registrations,
    sessions: :sessions
  }
  resources :rates, only: %i[create]
  get 'logged_in', to: "members#lodded_in_user" 
  delete 'logout', to: 'members#logout'
  # root "articles#index"
end
