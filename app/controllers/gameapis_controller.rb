class GameapisController < ApplicationController

  def mazingdaily
    render text: Time.now.beginning_of_day.to_i
  end

end
