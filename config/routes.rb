Rails.application.routes.draw do
  resources :shops, only: [] do
    scope module: :shops do
      resources :opening_hours, only: :index
    end
  end
end
