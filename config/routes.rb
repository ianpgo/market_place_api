Rails.application.routes.draw do
  #Api defintion
  namespace :api, defaults: {format: :json},
                              constraints: { subdomain:'api'}, path: '/' do
    #list resources here
  end
end
