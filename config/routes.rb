Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      post 'auth/token', :to => 'auth#token'
      post 'auth/facebook', :to => 'auth#facebook'
    end
  end
end
