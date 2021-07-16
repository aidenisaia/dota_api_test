Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/item_timings" => "item_timings#index"
  get "/item_timing/:id" => "item_timings#show"
end
