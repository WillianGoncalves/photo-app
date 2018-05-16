Rails.application.routes.draw do
  #uncomment this line after create a Stripe account
  #devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_for :users
  root "welcome#index"
end
