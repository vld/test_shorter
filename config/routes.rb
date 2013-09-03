TestShorter::Application.routes.draw do
  resources :tsurls, :only => [:new, :create, :index] do
    post :redir, :on => :collection
  end
  root :to => 'tsurls#index'
  match "new" => 'tsurls#new'
  match ':short' => 'tsurls#redir'
end
