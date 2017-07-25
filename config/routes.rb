Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      post 'auth/sign_in', :to => 'auth#sign_in'
      post 'auth/facebook', :to => 'auth#facebook'
      post 'auth/sign_up', :to => 'auth#sign_up'
    end
  end
end
