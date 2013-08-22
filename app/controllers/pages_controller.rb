class PagesController < ActionController::Base

  layout "pages"

  def index
    @admin_ids = User.where(:admin => true).map(&:id)
    @topics = Topic.by_newest.visible.where(:user_id => @admin_ids, :archetype => Archetype.default).limit(10)
  end

  def game
    @page_name = params[:game]

    render @page_name
  end

  def about

  end

  def contact

  end

end