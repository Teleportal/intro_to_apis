class SectionsController < ApplicationController
  def magic
    time = Time.new.strftime("%H:%M")
    render json: {its: "magic"
                  the_time: time}
  end

  def gobbledy
    render json: {info: "bibidi"}
  end

  def gook
    render json: {info: "bobidi"}
  end
end
