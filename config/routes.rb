require 'api_constraints'

Rails.application.routes.draw do
  devise_for :users
  #Api defintion
  namespace :api, defaults: {format: :json},
                              constraints: { subdomain:'api'}, path: '/' do
    scope module: :v1,
              constraints: ApiConstraints.new(version:1, default: true) do
    #list resources here
    end
  end
end