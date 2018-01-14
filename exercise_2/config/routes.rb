Rails.application.routes.draw do
  get "/fortune" => 'cats#fortune'
  get "/lotto" => 'cats#lotto'
  get "/refresh" => 'cats#refresh'
  get "/beers" => 'cats#beers'
end
