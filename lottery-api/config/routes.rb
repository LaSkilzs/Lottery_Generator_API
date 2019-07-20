Rails.application.routes.draw do
   namespace 'api' do
    namespace 'v1' do
      post '/drawing', to: "lotteries#drawing"   
      post '/fulldrawing', to: "numbers#generatePick"  
  resources :lotteries, only: [:index, :show, :create]
  
  
end
end
end
