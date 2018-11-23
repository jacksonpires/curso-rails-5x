Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  namespace :profiles_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  devise_for :profiles
  devise_for :admins
 
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
