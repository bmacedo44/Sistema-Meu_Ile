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

puts "Por favor, insira o nome do seu Ilé Asè:"
nome_casa = gets.chomp  # <--- VEJA: Colado na esquerda!

puts "Por favor, me diga se é uma casa de Candomblé ou Umbanda:"
nome_religiao = gets.chomp

puts "Por favor, insira o nome da sacerdotisa ou sacerdote responsável pela casa:"
nome_priest = gets.chomp

puts "Legal, #{nome_priest}! Pelo que entendi, você é responsável pela casa #{nome_casa}!"
puts "Agora me diga, em que ano a casa #{nome_casa} foi fundada oficialmente?"
data_fundacao = gets.chomp.to_i

puts "Que legal! Isso que dizer que a casa #{nome_casa} possui #{Time.now.year - data_fundacao} anos! Que massa!"
system "clear"

puts "Guardando as informações..."
sleep 4

puts "Agora é a hora que o filho da casa até treme nas bases!"
puts "Qual o valor da mensalidade cobrado atualmente?"
print "R$ " # Adicionei um espaço depois do R$ para ficar bonito na tela
valor_mensalidade = gets.chomp.to_f

puts "Muito bom! Eu acho R$ #{valor_mensalidade} bem razoável!"
system "clear"

puts "Por fim, me diga quantos integrantes ativos existem hoje na casa #{nome_casa}?"
integrantes_ativos = gets.chomp.to_i

puts "Ótimo! Agora já temos todas as informações iniciais para fazer o cadastro básico da casa #{nome_casa}!"
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

puts "A casa #{nome_casa} é comandada por #{nome_priest} e toca #{nome_religiao}"
puts "A casa #{nome_casa} possui #{Time.now.year - data_fundacao} anos e conta com #{integrantes_ativos} integrantes ativos!"
puts "Hoje é cobrado o valor simbólico de R$ #{valor_mensalidade} para auxiliar na manutenção e pagamento das contas básicas da casa."