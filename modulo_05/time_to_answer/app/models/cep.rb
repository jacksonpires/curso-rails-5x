require 'net/http'
class CEP
  attr_reader :logradouro, :bairro, :localidade, :uf
  
  END_POINT = "https://viacep.com.br/ws/"
  FORMAT = "json"
  
  def initialize(cep)
    cep_econtrado = encontrar(cep) # hash
    preencher_dados(cep_econtrado)
  end

  def endereco
    "#{@logradouro} / #{@bairro} / #{@localidade} - #{@uf}"
  end

  private

  def preencher_dados(cep_econtrado)
    @logradouro = cep_econtrado["logradouro"]
    @bairro     = cep_econtrado["bairro"]
    @localidade = cep_econtrado["localidade"]
    @uf         = cep_econtrado["uf"]
  end

  def encontrar(cep)
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI("#{END_POINT}#{cep}/#{FORMAT}/")
      )
    )
  end
end