Rails.application.routes.draw do

  # root 'welcome#index'

  # -----------
  # API Routes
  # -----------

get 'test/new'

resources :test
root 'test#new'

  namespace :api do
    namespace :v1 do
      get 'info/server' => 'info#server'
      get 'school_sections' => 'school_sections#index'
      get 'school_sections/:id' => 'school_sections#show'
      get 'teacher_sections' => 'teacher_sections#index'

    end
  end

end
