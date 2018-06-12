Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Read all
get 'tasks', to: 'tasks#index'
#Read one
# get 'tasks/:id', to: 'tasks#show', as: :task

# CREATE Resto
# First route to get page with form
get 'tasks/new', to: 'tasks#new'
# Second route to post information to
post 'tasks', to: 'tasks#create'

get 'tasks/:id', to: 'tasks#show', as: :task

# UPDATE
# First route to get page with form#
get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
# Second route to post information to
# Patch updates a restaurant and does not require you to send all the of parameters related to the object you are updating.
patch 'tasks/:id', to: 'tasks#update'


# DELETE
# One route to delete one restaurant.
delete 'tasks/:id', to: 'tasks#destroy', as: :task_delete
end
