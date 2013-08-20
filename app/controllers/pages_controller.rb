class PagesController < ActionController::Base

  layout "pages"

  def index

  end

  def game
    @page_name = params[:game]

    render @page_name
  end

end