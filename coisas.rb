def calculadora
  print 'escolha um operador matemático: '
  operador = gets.chomp

res = case operador
 when '+'

  print 'Esoclha um número: '
  num1 = gets.chomp.to_i
  print 'Escolha outro número: '
  num2 = gets.chomp.to_i
  res = "A soma entre os números #{num1} e #{num2} é #{num1 + num2}"

 when '-'

  print 'Esoclha um número: '
  num1 = gets.chomp.to_i
  print 'Escolha outro número: '
  num2 = gets.chomp.to_i
  res = "A subtração entre os números #{num1} e #{num2} é #{num1 - num2}"

 when 'm'

  print 'Esoclha um número: '
  num1 = gets.chomp.to_i
  print 'Escolha outro número: '
  num2 = gets.chomp.to_i
  res = "A multiplicação entre os números #{num1} e #{num2} é #{num1 * num2}"

 when 'd'

  print 'Esoclha um número: '
  num1 = gets.chomp.to_i
  print 'Escolha outro número: '
  num2 = gets.chomp.to_i
  res = "A divição entre os números #{num1} e #{num2} é #{num1 / num2}"

 when 'p'

  print 'Esoclha um número: '
  num1 = gets.chomp.to_i
  print 'Escolha outro número: '
  num2 = gets.chomp.to_i
  res = "A potência entre os número #{num1} e #{num2} é #{num1 ** num2}"

 when 'r'

  print 'Escolha um número: '
  num1 = gets.chomp.to_i
  res = "A raiz do número #{num1} é #{num1 ** 0.5}"

else

  puts "Operador invalido"

 end
puts res
end

def impa_ou_par

  puts 'Escolha um núnmero'
  n1 = gets.chomp.to_i
  if n1 % 2 == 0
    puts "O número #{n1} é par"
  else
    puts "O número #{n1} é impar"
  end
end

def ano

  agora = Time.now
  puts agora.strftime("%d/%m/%Y as horas são %H:%M")

end

def idade
 print "Em que ano você ou a pessoa nasceu?: "
 ano_ns = gets.chomp.to_i
 t = Time.now.year
 rs = t - ano_ns
 puts "A pessoa tem  #{rs}"
 end
puts "escolha um dessas opções \n 1- Calculadora \n 2- Adivinha se o número é impar ou par \n 3- Horas e Dia\n 4- Adivinhe a idade dos outros"
escolha = gets.chomp.downcase

case escolha
when '1'
  puts 'A opção "Calculadora" foi escolhida'
  calculadora
when '2'
  puts 'A opção"Adivinha se o número é impar ou par" foi escolhida'
  impa_ou_par
when '3'
  puts 'A opção "Horas e Dia" foi escolhida'
  ano
when '4'
  puts 'A opção "Adivinhe a idade dos outros" foi escolhida'
  idade
else
  puts 'Escolha inválida'
end
