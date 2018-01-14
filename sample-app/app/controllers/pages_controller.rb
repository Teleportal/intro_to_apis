class PagesController < ApplicationController
  def hello_method
    render json: {message: "hello"}
  end
end
