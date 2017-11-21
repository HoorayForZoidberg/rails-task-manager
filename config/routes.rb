Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # list all tasks
  get 'tasks', to: 'tasks#index', as: :index

  # create a task
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  # list details of one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'task', to: 'tasks#update'

  # delete task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

end
