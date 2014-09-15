
Rails.application.routes.draw do

  get 'teacher/new'

  # root 'welcome#index'

  # -----------
  # API Routes
  # -----------

get 'test/new'

resources :test
resources :teacher

root 'test#new'

  namespace :api do
    namespace :v1 do
      get 'info/server' => 'info#server'
      get 'school_sections' => 'school_sections#index'
      get 'teacher_sections' => 'teacher_sections#index'
      get 'school_sections/:id' => 'school_sections#show'
      get 'school_sections/:id/teachers' => 'teacher_sections#index'


    end
  end

end
