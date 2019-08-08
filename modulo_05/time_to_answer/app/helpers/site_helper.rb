module SiteHelper
  def msg_jumbotron
    case params[:action]
    when 'index'
      "Últimas perguntas cadastradas..."
    when 'questions'
      "Resultados par ao termo \"#{sanitize params[:term]}\"..."
    when 'subject'
      "Mostrando questões para o assunto \"#{sanitize params[:subject]}\"..."
    end
  end
end
