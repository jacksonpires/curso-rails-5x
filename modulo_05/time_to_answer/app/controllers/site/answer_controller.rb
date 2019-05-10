class Site::AnswerController < SiteController
  def question
    @answer = Answer.find(params[:answer_id])
  end
end
