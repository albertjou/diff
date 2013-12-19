Diff::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}

  resources :authentications

  root :to => "pages#home"
  resources :tasks, except: :destroy

  match "/auth/:provider/callback" => "authentications#create"

  match '/company/:domain' => 'pages#domain'
  match '/competencies' => 'pages#competencies'
end
