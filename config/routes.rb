Rails.application.routes.draw do
  resources :articles, only: %w[index], defaults: { format: :json }
end
