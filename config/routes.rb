Rails.application.routes.draw do
  root 'route#index'

  get '/hello' => 'route#hello'

  get 'say/hello/:name'=> 'route#name'

  get 'say/hello' => 'route#say'

  get '/times' => 'route#show'

  get 'times/restart' => 'route#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
