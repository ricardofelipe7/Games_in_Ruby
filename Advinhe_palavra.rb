novo_jogo = "s"
while novo_jogo == "s"

    palavras = %w{cachorro gato camelo formiga morcego dromedario}
    palavra_sorteada = palavras.sample #sortea a palava automaticamente.
    palavra_tamanho = palavra_sorteada.size #tamanho da palavra.

    puts "Descubra a palavra que estou pensando: "
    palavra_parcial = [] #mostra os " _ ".

    palavra_tamanho.times do 
        palavra_parcial << " _ "
    end

    p palavra_parcial.join

    fim = false

        while fim == false
        puts "Escolha uma letra: "
        sua_letra = gets.chomp #captura a letra sem o button enter.
        
        aux = 0 

        palavra_sorteada.each_char do |letra_palavra| #captura a palavra sorteada verificando cada letra.
            if palavra_parcial[aux] == " _ "
                if letra_palavra == sua_letra
                    palavra_parcial[aux] = sua_letra # a variavel {aux} auxilia na movimentação no array.
                end
            end

            aux += 1
        end

        if palavra_parcial.join.count(" _ ") > 0 #confere cada letra se é igual ou não.
            fim = false
            puts palavra_parcial.join    
        else
            fim = true
        end
    end

    puts  "Parabens, a palavra era #{palavra_parcial.join}!"
    puts "Deseja jogar novamente? (s/n)"
    novo_jogo = gets.chomp
end

puts "Obrigado por jogar!"