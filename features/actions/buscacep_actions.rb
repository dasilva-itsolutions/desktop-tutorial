#BuscaCepActions

class BuscaCepActions
    include HTTParty

    class << self
        attr_accessor :response
    end

        def self.buscacep(cep)
            self.response = HTTParty.get("https://viacep.com.br/ws/#{cep}/json")
            # puts self.response
        end
end