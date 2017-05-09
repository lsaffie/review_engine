ReviewEngine::Engine.routes.draw do
  resources :homeowner_reviews, only: [:create, :show]
end
