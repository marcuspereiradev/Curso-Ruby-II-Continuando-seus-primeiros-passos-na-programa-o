def da_boas_vindas
    puts "Bem vindo ao jogo da forca"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n"
    puts "Começaremmos o jogo para você, #{nome}!"
    nome
end

def escolhe_palavra_secreta
    puts "Escolhendo uma palavra secreta..."
    palavra_secreta = "programador"
    puts "Palavra secreta com #{palavra_secreta.size} letras... boa sorte!"
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end

def pede_um_chute(chutes, erros)
    puts "\n\n"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    puts "Será que acertou? Você chutou #{chute}"
end

def joga(nome)
    palavra_secreta = escolhe_palavra_secreta
    erros = 0
    chutes = []
    pontos_ate_agora = 0
    puts "Você ganhou #{pontos_ate_agora} pontos."

    while erros < 5
        chute = pede_um_chute(chutes, erros)
        chutes << chute

        chutou_uma_letra = chute.size == 1
        if chutou_uma_letra
        else 
            acertou = chute == palavra_secreta
            if acertou
                puts "Parabéns! Acertou!"
                pontos_ate_agora += 100
                break 
            else
                puts "Que pena... errou"
                pontos_ate_agora -= 30    
                erros += 1
            end
            
        end
        
    end
end

nome = da_boas_vindas
palavra_secreta = escolhe_palavra_secreta

loop do
    joga(nome)
    if nao_quer_jogar?
        break
    end
    
end