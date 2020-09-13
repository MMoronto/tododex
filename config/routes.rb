Rails.application.routes.draw do
  resources :lists do
    resources :items
  end


#  get 'site/index'
  # The priority is based upon order of creation: first created -> highest priority
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
# root 'site#index'
  root 'lists#index'

# Example of regular route:
# => get 'products/:id' => 'catalog#view'

# Example of named route that can be invoked with purchase_url(id: product.id)
#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

# Example of resource route (maps HTTP verbs to controller actions automatically)
#   resources :products

# Example of resource route with options:
#   resources :products do

# Example resource route with options:
#  resources :products do
#    member do
#      get 'short'
#      popst 'toggle'
#    end

#    collection do
#      get 'sold'
#    end
#  end

end
