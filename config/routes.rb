Rails.application.routes.draw do

  # root 'welcome#index'

  # -----------
  # API Routes
  # -----------

  namespace :api do
    namespace :v1 do
      get 'info/server' => 'info#server'
      get 'school_sections' => 'school_sections#index'

    end
  end

end
