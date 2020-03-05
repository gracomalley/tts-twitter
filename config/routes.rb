Rails.application.routes.draw do
  get 'epicenter/feed'
  get 'epicenter/show_user'
  get 'epicenter/now_following'
  get 'epicenter/unfollow'
  resources :tweets
  get 'all_users'=>'epicenter#all_users'
  devise_for :users
  root 'epicenter#feed' #default landing page
  get'show_user'=>'epicenter#show_user'
  get'now_following'=>'epicenter#now_following'
  get 'unfollow'=>'epicenter#unfollow'
  get 'tag_tweets'=>'epicenter#tag_tweets'
  get 'following'=>'epicenter#following'
  get 'followers'=>'epicenter#followers'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
