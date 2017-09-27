Rails.application.routes.draw do
  resources :forma_pagos
  resources :paises
  resources :tipos
  resources :pais
  resources :operadoras
  resources :modelos
  devise_for :usuarios,  controllers: { sessions: "usuarios/sessions", registrations: "usuarios/registrations", passwords: "usuarios/passwords"  }, :path_names => {:sign_in => 'login', :sign_up => 'registro', :sign_out => 'logout'}
  as :usuario do
    get 'sign_in' => 'usuarios/sessions#new', :as => :new_usuario_session_path
    get 'sign_up' => 'usuarios/registrations#create', :as => :usuario_registration_path
    delete 'sign_out' => 'usuarios/sessions#destroy', :as => :destroy_usuario_session_path
    get 'new' => 'usuarios/sessions#destroy', :as => :new_usuario_password_path
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'marcas#buscar'

  resources :telefonos do
    collection do
      get 'busqueda', to: "telefonos#busqueda"
    end
  end

  resources :pedidos do
    collection do
      get 'crear', to: "pedidos#crear"
      post 'create', to: "pedidos#create"
    end
  end

  resources :marcas do
  collection do
    get 'buscar', to: "marcas#buscar"
    get "busqueda", to: "marcas#busqueda"
    end
  end
end
