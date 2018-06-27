Rails.application.routes.draw do
  # It is RESTful
  root "links#index"
  get 'links' => 'links#index'
  get 'links/new' => 'links#new'
  post 'links' => "links#create"
  delete 'links/:id' => 'links#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
