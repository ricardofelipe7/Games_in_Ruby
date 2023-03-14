class Monstro
    attr_accessor :energia, :ataque, :vivo
    
    def initialize
        self.energia = Random.rand(10) + 6
        self.vivo = true
    end

    def bater(alvo)
    if alvo.esta_vivo?
        self.ataque = Random.rand(5)
        puts "O dano do monstro foi #{self.ataque}"
        alvo.energia -= self.ataque
    else
        puts 'Voce esta morto!'
    end
    
    # puts 'voce esta morto!' unless is_alive?
    def esta_vivo?
        true if self.energia > 0
    end
    end
end

class Heroi 
    attr_accessor :energia, :ataque, :vivo, :numero_de_mortos

    def initialize
        self.energia = 30
        self.vivo = true
        numero_de_mortos = 0
    end

    def bater(alvo)
        if alvo.esta_vivo?
            self.ataque = Random.rand(5) + 3
            puts "Voce acertou o monstro, seu dano foi #{self.ataque}"
            alvo.energia -= self.ataque
        else
            puts"O monstro esta morto!\n\n"
            self.numero_de_mortos += 1
        end
            
        def esta_vivo?
            true if self.energia > 0
        end
    end
end


odin = Heroi.new
fishman = Monstro.new
puts odin.inspect
puts fishman.inspect

odin.bater(fishman)
puts fishman.inspect