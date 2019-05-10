class Site::AnswerController < SiteController
  def question
    puts ">>>>>>>>>>>>>>>>>>>> #{params[:answer]}"
  end
end
