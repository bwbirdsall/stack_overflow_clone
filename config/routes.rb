HeapOverflow::Application.routes.draw do
  devise_for :users

  resources :questions do
    resources :answers
  end

  resources :answers, :except => [:index, :show]

  root :to => 'questions#index'
end
