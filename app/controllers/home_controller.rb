class HomeController < ApplicationController
  def index
    @upcoming_events =  Event.where("time >= ?", Time.now)
    @historic_events =  Event.where("time < ?" , Time.now).limit(5)
  end
end
