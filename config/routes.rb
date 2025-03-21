
Rails.application.routes.draw do
  root 'tweets#index'   # ホームページとしてツイート一覧を表示
  resources :tweets, only: [:index, :create]
end
