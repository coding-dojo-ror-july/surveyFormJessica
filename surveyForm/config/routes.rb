Rails.application.routes.draw do
  root "survey#index"
  post "result" => "survey#result"
  get "result_view" => "survey#result_view"

end
