class Site::SearchController < SiteController
  def questions
    @questions = Question.search(params[:page], params[:term])
  end
end
