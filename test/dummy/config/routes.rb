Rails.application.routes.draw do

  mount ReviewEngine::Engine => "/review_engine"
end
