palavras = []
puts 'Digite quantas palavras você quiser e em qualquer ordem.
Para salvar cada palavra é só apertar /Enter/ após digitá-la.
Esse programa irá salvar todas as palavras digitadas e vai exibí-las em ordem alfabética.'

palavra_nova = gets.chomp.downcase
while palavra_nova != ''
  palavras.push palavra_nova
  palavra_nova = gets.chomp.downcase
end

teve_troca = true
while teve_troca == true
    teve_troca = false
    posicao = 0
    while posicao < palavras.length - 1
      palavra_a = palavras[posicao]
      palavra_b = palavras[posicao + 1]
      if palavra_a > palavra_b
        palavras[posicao] = palavra_b
        palavras[posicao + 1] = palavra_a
        teve_troca = true
      end
      posicao += 1
    end
end

puts palavras.join(', ') + '.'
