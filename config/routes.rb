TestShorter::Application.routes.draw do
  resources :tsurls, :only => [:new, :create] do
    post :redir, :on => :collection
    get :show, :on => :collection
  end
  root :to => 'tsurls#new'
end
