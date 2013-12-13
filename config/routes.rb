Intothenavel::Application.routes.draw do
  devise_for :users, path: 'auth'
  root 'generic#index'

  resources :thoughts

  resources :users do
    resources :thoughts do
      collection do
        get "manage" => "generic#index"
        get "manage/new" => "thoughts#new"
        get "manage/:thought_id/edit" => "thoughts#edit"
      end
    end
  end
end
