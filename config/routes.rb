Diff::Application.routes.draw do
  resources :authentications


  devise_for :sponsors

  devise_for :volunteers

  root :to => "pages#home"
  resources :tasks, except: :destroy

  get '/sign_up' => 'pages#sign_up', :as => "sign_up"
  get '/sign_in' => 'pages#sign_in', :as => 'sign_in'
  match "/auth/:provider/callback" => "sessions#create"
end
