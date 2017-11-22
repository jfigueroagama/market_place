require 'api_constraints'

Rails.application.routes.draw do
  devise_for :users
  # API routes definition
  namespace :api, defaults: {format: :json} do
    # Match app/controllers/api under the controllers folder
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
      resources :users, :only => [:show, :create, :update, :destroy]
    end
  end
end
