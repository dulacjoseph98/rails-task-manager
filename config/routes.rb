Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 4 - Edit/Update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # 3 - Add a new task
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  
  # 1 - See all Tasks
  get "tasks", to: "tasks#index"
  # 2 - Show a task
  get "tasks/:id", to: "tasks#show", as: :task
  # 5 - Deleting stuff
  delete "tasks/:id", to: "tasks#destroy"
 
end
