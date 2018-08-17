namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Apagando BD...")
      spinner.auto_spin
      %x(rails db:drop) 
      spinner.success('(Concluído com sucesso!)')
      
      spinner = TTY::Spinner.new("[:spinner] Criando BD...")
      spinner.auto_spin
      %x(rails db:create)
      spinner.success('(Concluído com sucesso!)')
      
      spinner = TTY::Spinner.new("[:spinner] Migrando BD...")
      spinner.auto_spin
      %x(rails db:migrate)
      spinner.success('(Concluído com sucesso!)')      
   
      spinner = TTY::Spinner.new("[:spinner] Populando BD...")
      spinner.auto_spin
      %x(rails db:seed)
      spinner.success('(Concluído com sucesso!)')       
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

end
