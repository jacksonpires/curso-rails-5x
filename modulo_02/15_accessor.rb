class Pessoa
    attr_accessor :nome
end

p1 = Pessoa.new
p1.nome = "Jackson" #setter
p1.nome = "Joao" #setter
p1.nome = "Jose" #setter
puts p1.nome # getter