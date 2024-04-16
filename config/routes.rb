Rails.application.routes.draw do
  post 'create_post', to: 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
