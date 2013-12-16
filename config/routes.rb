Diff::Application.routes.draw do
  devise_for :sponsors

  devise_for :volunteers

  root :to => "pages#home"
end
