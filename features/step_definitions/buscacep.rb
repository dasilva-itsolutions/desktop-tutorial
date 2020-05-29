Dado("que eu tenha um cep existente") do
    @cep = '01001000'
    puts @cep 
  end
  
  Dado("realizo a busca") do
    BuscaCepActions.buscacep(@cep)
    puts BuscaCepActions.response.code      
  end
  
  Entao("recebo o codigo do IBGE cadastrado para o CEP") do
    ret = BuscaCepActions.response.parsed_response["ibge"]
    puts "STDOUT: #{ret}"    
  end
  
  Dado("que eu tenha um cep inexistente") do
    @cep= '01201100'
    puts @cep
  end
  
  Entao("recebo o retorno com erro") do
    puts BuscaCepActions.response.code 
    puts BuscaCepActions.response.body
  end