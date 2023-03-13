agenda = {
  Ana: '8989-8989',
  Pedro: '7979-7979'
}

while true
  puts ''
  puts '1 - Adicionar'
  puts '2 - Atualizar'
  puts '3 - Exibir'
  puts '4 - Excluir'

  print 'Escolha uma opção: '
  escolha = gets.chomp
  puts ''

  case escolha
    when '1'
        print 'Insira o nome do contato: '
        nome = gets.chomp
        if agenda[nome.to_sym].nil?
            print 'Insira o telefone: '
            telefone = gets.chomp
            agenda[nome.to_sym] = telefone
        else
            puts 'Este nome já existe!'
    end

    when '2'
        puts 'Que nome você deseja atualizar?'
        nome = gets.chomp
        if agenda[nome.to_sym].nil?
            puts 'Este nome não existe!'
        else
            print 'Qual o telefone?'
            telefone = gets.chomp
            agenda[nome.to_sym] = telefone
        end
    
    when '3'
        agenda.each do |nome, telefone|
          puts "Nome: #{nome} - Telefone: #{telefone}"
        end
    
    when '4'
        puts 'Qual nome você gostaria de apagar?'
        nome = gets.chomp
        if agenda[nome.to_sym].nil?
            puts 'Este nome não existe!'
        else
            agenda.delete(nome.to_sym)
            puts "#{nome} foi deletado."
        end
    else
        puts 'Desculpa, opção inválida.'
    end    
 
end