Rails.application.routes.draw do
  resources :posts do
  	get 'versions', to: 'posts#versions'
  	get 'restore_version', to: 'posts#restore_version'
  	get 'compare_versions', to: 'posts#compare_versions'
  end

  root 'posts#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
