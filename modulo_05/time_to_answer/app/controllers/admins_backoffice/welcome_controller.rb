class AdminsBackoffice::WelcomeController < AdminsBackofficeController
  def index
    @total_users = AdminStatistic.find_by_event(AdminStatistic::EVENTS[:total_users]).value
    @total_questions = AdminStatistic.find_by_event(AdminStatistic::EVENTS[:total_questions]).value
  end
end
