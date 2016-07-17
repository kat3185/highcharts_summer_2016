Rails.application.routes.draw do
  root 'winning_word_lengths#index'
  devise_for :users
  resources :winning_word_lengths, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
