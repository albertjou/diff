Diff::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}

  resources :authentications

  root :to => "pages#home"
  resources :tasks, except: :destroy
  resources :companies

  match "/auth/:provider/callback" => "authentications#create"

  match '/api/domain/:domain' => 'pages#domain'
  match '/competencies' => 'pages#competencies'
  match '/api/company/:company' => 'pages#company'
end
