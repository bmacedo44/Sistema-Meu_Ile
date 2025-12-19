puts "\nSoftware para coleta de mensalidades, custeio de benfeitorias e registro dos integrantes da Egbè"

#VARIÁVEIS

integrantes = []
montante_mensalidade = 0
recebimento_mensalidade = []
conta_luz = 450.62
conta_agua = 350.48
conta_internet = 300.90
benfeitorias = 1600.00
contribuicoes_benfeitorias = 0.0
visualizar_cadastros = "não"

#===============================================================================================================
while true do
puts "============= Menu de opções ============="
puts "Opção 1: Cadastro de integrante"
puts "Opção 2: Recebimento de mensalidade"
puts "Opção 3: Recebimento de contribuições para benfeitorias"

menu_option = gets.chomp

case menu_option
when "1"
while true do
  novo_integrante = {}
  puts "Cadastro de integrates da Egbè"
  puts "__________________________________________________________________________________"
  puts "Digite a palavra (FIM) se não houver um novo integrante a ser cadastrado"
  puts "__________________________________________________________________________________"
  print "\nDigite o nome completo do integrante:"
  name = gets.chomp

  if name.downcase == "fim"
    break
  end

novo_integrante["nome"] = name
  
  print "\nAgora informe a data de nascimento de #{name}:"
  data_nascimento = gets.chomp.to_s
  novo_integrante["data_de_nascimento"] = data_nascimento

  print "\nAgora informe o ano em que #{name} em que entrou para a casa:"
  ano_ingresso = gets.chomp.to_i
  novo_integrante["ano_de_ingresso"] = ano_ingresso


  print "\nÉ iniciado(a)? (SIM/NÃO):"
  iniciado_resposta = gets.chomp.downcase
  novo_integrante["iniciado"] = iniciado_resposta

  if iniciado_resposta == "sim"
    print "\nDigite o ano de iniciação:"
    ano_iniciacao = gets.chomp.to_i
    novo_integrante["ano_de_iniciacao"] = ano_iniciacao

    print "\nQual o Orisa?"
    orisa_iniciado = gets.chomp
    novo_integrante["orisa"] = orisa_iniciado

    puts "Lembre-se de encher suas quartinhas e ascender seu santo e Bara!"
    puts "Agradecemos seu cadastro!"

  end
integrantes << novo_integrante

puts "Agradecemos seu cadastro, #{name}!"

end

puts "================= CADASTRO FINALIZADO COM SUCESSO! ==================="
puts "Total de integrantes cadastrados: #{integrantes.length}"

puts "Deseja visualizar o resgistro dos integrantes cadastrados? (SIM/NÃO):"
visualizar_cadastros = gets.chomp.downcase

if visualizar_cadastros == "sim"
puts "Registro de integrantes cadastrados: #{integrantes.inspect}"
end

when "2"
  system "clear"
  while true do
  registro_pagamento_mensalidade = {}

  puts "Você selecionou a opção de registrar um pagamento de mensalidade"
  puts "Insira as insformações a seguir com muita atenção!"
  puts "__________________________________________________________________________________"
  puts "Digite a palavra (FIM) se não houver um pagamento de mensalidade a ser registrado"
  puts "Digite o nome da pessoa que realizou o pagamento da mensalidade:"
  nome_integrante = gets.chomp
  if nome_integrante.downcase == "fim"
    break
  end
end
  
registro_pagamento_mensalidade["nome"] = nome_integrante

  print "\nAgora informe a data do pagamento da mensalidade:"
  data_pagamento = gets.chomp.to_s
  registro_pagamento_mensalidade["data_do_pagamento"] = data_pagamento

  print "\nEsse pagamento é referente a qual mês/ano?"
  mes_referencia = gets.chomp.to_s
  registro_pagamento_mensalidade["referência_mês"] = mes_referencia

  print "\nQual foi o valor pago?: R$"
  puts"Insira o valor decimal usando ponto no lugar da vírgula| exemplo: (10.95)"
  valor_pago = gets.chomp.to_f
  registro_pagamento_mensalidade["valor_pago"] = valor_pago

  recebimento_mensalidade << registro_pagamento_mensalidade
  montante_mensalidade += valor_pago
puts "======================= PAGAMENTO DE MENSALIDADE REGISTRADO COM SUCESSO! ======================="
puts "Deseja visualizar o recibo de pagamento? (SIM/NÃO)"
visualizar_recibo = gets.chomp.downcase
if visualizar_recibo == "sim"
  puts"Esse é o registro de pagamentos de mensalidade: #{recebimento_mensalidade.inspect}"

end
  end
end