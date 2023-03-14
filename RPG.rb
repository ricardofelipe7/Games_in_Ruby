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

monstro1 = Monstro.new
monstro2 = Monstro.new
puts monstro1.inspect
puts monstro2.inspect

monstro1.bater(monstro2)
puts monstro2.inspect