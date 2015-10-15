Rails.application.routes.draw do
  resources :sessions, only: [:create]
  post 'aws/sign', to: 'aws#sign'
end
