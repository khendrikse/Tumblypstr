Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"
  get "/pages/poster", page: "poster"
  root "pages#show", page: "home"

end
