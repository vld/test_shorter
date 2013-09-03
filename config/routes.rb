TestShorter::Application.routes.draw do
  resources :tsurls, :only => [:new, :create, :show]
  root :to => 'tsurls#new'
end
