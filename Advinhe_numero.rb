novo_jogo = "s"

while novo_jogo == "s"

    puts "Advinhe o numero que estou pensando entre 1 e 100: "
    seu_numero = gets.to_i #entreda do numero.

    pc_numero = Random.rand(99) + 1
    # puts pc_numero

    tentativas = 1

    while pc_numero != seu_numero
        if pc_numero > seu_numero
        puts "O número é maior que #{seu_numero}"    
        else
        puts "O número é menor que #{seu_numero}"
        end

        tentativas += 1

        puts "Tente novamente: "
        seu_numero = gets.to_i #digita o numero novamente.
    end

    puts "Parabéns! o número era #{pc_numero}"
    puts "Você usou #{tentativas} tentativas."

    puts "Deseja jogar novamente? (s/n)" #pergunta quer jogar novamente.
    novo_jogo = gets.chomp #captura a resposta.
end

puts "Obrigado por jogar!"