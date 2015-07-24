Rails.application.routes.draw do
  resources :developers, only: [:index]
  post '/stars' => 'developers#stars'
  post '/:slug/stars' => 'developers#stars'
  get '/:slug' => 'developers#show'

  match '*path', to: 'errors#not_found', via: :all
end
