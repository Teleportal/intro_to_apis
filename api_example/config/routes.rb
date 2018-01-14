Rails.application.routes.draw do
  get "/magic" => 'sections#magic' 
  get "/gobbledy" => 'sections#gobbledy'
  get "/gook" => 'sections#gook'
end
