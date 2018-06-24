Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get "/fortune" => "api/examples#fortune_action"
  get "fortune_image" => "api/examples#image action"
end
