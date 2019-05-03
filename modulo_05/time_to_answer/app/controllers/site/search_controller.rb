class Site::SearchController < SiteController
  def questions
    @questions = Question._search_(params[:page], params[:term])
  end
end
