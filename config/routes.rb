Rails.application.routes.draw do

    scope 'api' do
      scope '/people' do
        get '/' => 'api_people#index'
        post '/' => 'api_people#create'
        scope '/:id' do
          get '/' => 'api_people#show'
        end
      end
    end
    scope 'api' do
      scope '/films' do
        get '/' => 'api_films#index'
        scope '/:id' do
          get '/' => 'api_films#show'
            end
          end
        end
      end
