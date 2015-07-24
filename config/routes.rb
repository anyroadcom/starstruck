Rails.application.routes.draw do
  post '/:slug/stars' => 'developers#stars'

  match '*path', to: 'errors#not_found', via: :all
end
