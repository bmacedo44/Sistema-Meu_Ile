require 'json'

if File.exist?("data_base.json")
    usuario_atual = JSON.parse(File.read("data_base.json"), symbolize_names: true)
    puts ">> SEJA VEM VINDO(A) <<"
    sleep 2
else
    usuario_atual = {}
end

system "clear"
puts "Exercício prático #001 - Ruby - Meu Ilé:"
puts "____________________________________________________________"
puts "Olá!"
puts "Seja bem vindo(a) ao software - Meu Ilé!"
sleep 4
system "clear"

puts "Esse sistema foi desenvolvido na intenção de facilitar o trabalho administrativo e operacional do seu Ilé Asè."
puts "Vamos começar cadastrando seu Ilé Asè"
puts "Carregando... (Por favor aguarde enquanto o sistema carrega a tela inicial)"
sleep 4
system "clear"

puts "Você já possui cadastro no sistema?"
puts "Digite (S) caso possua ou (N) caso não possua:"
possui_cadastro = gets.chomp.upcase  

if possui_cadastro == "N"

    puts "Vamos criar seu cadastro, gentileza preencher os campos a seguir:"

    puts "Digite seu nome de usuário: (Não são aceitos: acentos e caracteres especiais)"
    usuario_atual[:user_name] = gets.chomp

    puts "Insira sua senha: (Sua senha deverá conter de 6 a 10 caracteres entre letras, números e caracteres especiais)"
    usuario_atual[:user_password] = gets.chomp

loop do 
    puts "Confirme sua senha:"
    user_pwd_confirm = gets.chomp
    if user_pwd_confirm == usuario_atual[:user_password]
        puts "A senha confere!"
        sleep 4
        break
    else 
        puts "ERRO - As senhas não batem! Gentileza corrigir."
    end
end
    puts "Insira seu endereço de e-mail:"
    usuario_atual[:user_email] = gets.chomp

    loop do 
        puts "Confirme seu endereço de e=mail:"
        user_email_confirmation = gets.chomp
        if user_email_confirmation == usuario_atual[:user_email]
            puts "Endereço de e-mail confere"
            sleep 4
        break
        else
            puts "ERRO - Endereço de e-mail não confere, gentileza corrigir"
        end
    end

    puts "Por favor, insira o nome do seu Ilé Asè:"
    usuario_atual[:nome_casa] = gets.chomp  

    puts "Por favor, me diga se é uma casa de Candomblé ou Umbanda:"
    usuario_atual[:nome_religiao] = gets.chomp

    puts "Por favor, insira o nome da sacerdotisa ou sacerdote responsável pela casa:"
    usuario_atual[:nome_priest] = gets.chomp

    puts "Legal, #{usuario_atual[:nome_priest]}! Pelo que entendi, você é responsável pela casa #{usuario_atual[:nome_casa]}!"
    puts "Agora me diga, em que ano a casa #{usuario_atual[:nome_casa]} foi fundada oficialmente?"
    usuario_atual[:data_fundacao] = gets.chomp.to_i

    puts "Que legal! Isso que dizer que a casa #{usuario_atual[:nome_casa]} possui #{Time.now.year - usuario_atual[:data_fundacao]} anos! Que massa!"
    system "clear"

    puts "Guardando as informações..."
    sleep 4

    puts "Agora é a hora que o filho da casa até treme nas bases!"
    puts "Qual o valor da mensalidade cobrado atualmente?"
    print "R$ " 
    usuario_atual[:valor_mensalidade] = gets.chomp.gsub(",", ".").to_f

    puts "Muito bom! Eu acho R$ #{usuario_atual[:valor_mensalidade]} bem razoável!"
    system "clear"

    puts "Por fim, me diga quantos integrantes ativos existem hoje na casa #{usuario_atual[:nome_casa]}?"
    usuario_atual[:integrantes_ativos] = gets.chomp.to_i

    puts "Ótimo! Agora já temos todas as informações iniciais para fazer o cadastro básico da casa #{usuario_atual[:nome_casa]}!"
    puts "Por favor, aguarde enquanto estamos processando as informações."
    sleep 5
    system "clear"

    puts "Aguarde só mais um pouco, queremos ter certeza de que está tudo no seu devido lugar!"
    system "clear"

    puts "Realizando os últimos ajustes..."
    sleep 6

    puts "PRONTO! Cadastro realizado com sucesso!"
    sleep 3
    system "clear"

    puts "Salvando os dados no sistema - Por favor aguarde..."
sleep 4
system "clear"
dados_armazenados = JSON.pretty_generate(usuario_atual)
File.open("data_base.json", "w") do |archive|
    archive.write(dados_armazenados)
end

puts "Cadastro salvo com sucesso!"

    puts "A casa #{usuario_atual[:nome_casa]} é comandada por #{usuario_atual[:nome_priest]} e toca #{usuario_atual[:nome_religiao]}"
    puts "A casa #{usuario_atual[:nome_casa]} possui #{Time.now.year - usuario_atual[:data_fundacao]} anos e conta com #{usuario_atual[:integrantes_ativos]} integrantes ativos!"
    puts "Hoje é cobrado o valor simbólico de R$ #{usuario_atual[:valor_mensalidade]} para auxiliar na manutenção e pagamento das contas básicas da casa."

end

if possui_cadastro == "S"
    puts "Por gentileza, insira aqui seu nome de usuário:"
    autentication_user_name = gets.chomp
    if autentication_user_name == usuario_atual[:user_name]
        puts "Olá #{usuario_atual[:user_name]} !"
        sleep 4
        puts "Por favor, confirme sua senha de acesso:"
        loop do 
        user_pwd_confirm = gets.chomp
        if user_pwd_confirm == usuario_atual[:user_password]
            puts "A senha confere!"
            sleep 4
            puts "Dados cadastrais de #{usuario_atual[:user_name]} :"
            puts "#{usuario_atual}"
        break
        else 
        puts "ERRO - As senhas não batem! Gentileza corrigir."
        end
end
    else
        puts "ERRO - Nome de usuário não cadastrado!"
    end
end  


