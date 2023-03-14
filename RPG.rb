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
        self.numero_de_mortos = 0
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
puts odin.inspect

while odin.esta_vivo?
    fishman = Monstro.new
    puts fishman.inspect

    while fishman.esta_vivo? && odin.esta_vivo?
        odin.bater(fishman)
        puts "A energia do fishman e #{fishman.energia}" if fishman.esta_vivo?
        
        if fishman.esta_vivo?
            fishman.bater(odin)
            print "A sua energia e #{odin.energia}"
            puts ''
        end
    end
end

puts 'Odin esta morto!'
puts ""