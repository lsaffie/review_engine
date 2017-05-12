ReviewEngine::Engine.routes.draw do
  resources :homeowner_reviews,    only: [:create, :show, :index]
  resources :homeowner_review_sentiments, only: [:index]
end
