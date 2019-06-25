Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # NEW
  get 'riders/new', to: "riders#new", as: "new_rider"
  # INDEX
  get '/riders', to: "riders#index"
  # CREATE
  post '/riders', to: "riders#create"
  # EDIT
  get '/riders/:id/edit', to: "riders#edit"
  # UPDATE
  patch '/riders/:id', to: "riders#update", as: "rider"
  # SHOW
  get '/riders/:id', to: "riders#show"

  # NEW
  get 'rollercoasters/new', to: "rollercoasters#new", as: "new_rollercoaster"
  # INDEX
  get '/rollercoasters', to: "rollercoasters#index"
  # CREATE
  post '/rollercoasters', to: "rollercoasters#create"
  # EDIT
  get '/rollercoasters/:id/edit', to: "rollercoasters#edit"
  # UPDATE
  patch '/rollercoasters/:id', to: "rollercoasters#update", as: "rollercoaster"
  
end
