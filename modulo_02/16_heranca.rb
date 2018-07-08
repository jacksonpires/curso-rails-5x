class Pessoa
  attr_accessor :nome, :email
end

class PessoaFisica < Pessoa
  attr_accessor :cpf

  def falar(texto)
    texto
  end
end

class PessoaJuridica < Pessoa
  attr_accessor :cnpj

  def pagar_fornecedor
    "Pagando fornecedor..."
  end
end

# ---------------------
p1 = Pessoa.new 
# setter
p1.nome = "Jackson"
p1.email = "jackson@jack.com"

# getter
puts p1.nome
puts p1.email
puts "------------------------"
# ---------------------

p2 = PessoaFisica.new
# setter
p2.nome = "Joao"
p2.email = "joao@joao.com"
p2.cpf = "9191919191"

# getter
puts p2.nome
puts p2.email
puts p2.cpf

puts p2.falar("Hello!")
puts "------------------------"

# ---------------------

p2 = PessoaJuridica.new
# setter
p2.nome = "Vídeos de Ti"
p2.email = "vit@vti.com"
p2.cnpj = "9191919191-0001"

# getter
puts p2.nome
puts p2.email
puts p2.cnpj

puts p2.pagar_fornecedor
puts "------------------------"