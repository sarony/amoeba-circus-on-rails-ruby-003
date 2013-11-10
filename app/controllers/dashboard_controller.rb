class DashboardController < ApplicationController

  def index
    @acts = Act.all
    @performers = Performer.all
  end

end
