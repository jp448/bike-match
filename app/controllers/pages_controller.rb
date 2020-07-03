class PagesController < ApplicationController
  def home
    @bikes = Bike.all.reverse
  end
end
