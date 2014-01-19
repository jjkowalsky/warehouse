WarehouseJoekowalskyCom::Application.routes.draw do
    resources :parts

  resources :shipments

  resources :suppliers

  # root :to => 'welcome#index'

  root :to => "home#index"

  match "/home" => "home#index", :as => :home
  # match "/suppliers/:id/shipments" => "suppliers#shipments", :as => :supplier_shipments
  # alt for above, non-restful route
  resources :suppliers do
    member do
      get 'shipments'
    end
  end

end
