Rails.application.routes.draw do
  # API routes definition
  namespace :api, defaults: {format: :json}, constraints: {subdomain: 'api'}, path: '/' do
    # Match app/controllers/api under the controllers folder
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
    end
  end
end
