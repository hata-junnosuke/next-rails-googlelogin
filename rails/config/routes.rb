Rails.application.routes.draw do
  # letter_opener_web
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      # resources :users, only: [:create] do
      #   collection do
      #     post :login
      #   end
      # end
    end
  end
end
