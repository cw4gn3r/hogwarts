Hogwarts::Application.routes.draw do
  root to: 'welcome#index'

  resources :houses
  resources :students
end
