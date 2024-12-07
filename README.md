# AP2 - Desenvolvimento de Aplicação em Flutter com Dart

## Grupo: 
João Marcelo Costa Ferreira  
Nathan Fernandes de Lima Teixeia  
Allan Jefferson Silva Gonzaga  
Francisco Jonas Isaias Pereira



## Instruções de execução:

### Tela inicial   
O usuário tem a opção de escolher 3 botões com funcionalidade para navegar em 3 telas diferentes. Clicar em um botão leva o usuário à tela correspondente:
- Primeira tela: "Escolha do Combustível": Tela onde o usuário pode calcular se deve abastecer com álcool ou gasolina.  
- Segunda tela: "Frases do Dia": Tela onde uma frase é gerada aleatoriamente.  
- Terceira tela: "Jogos": Tela onde o usuário pode escolher entre três jogos diferentes.

### Tela "Escolha do Combustível":  
O usuário irá inserir os preços do álcool e da gasolina nos campos de texto, e o aplicativo
irá calcular e mostrar na tela qual é o combustível mais vantajoso para o usuário. A regra do cálculo é se o preço do álcool dividido pelo preço da gasolina 
for menor ou igual a 0.7, então o álcool é mais vantajoso, caso contrário, a gasolina é a melhor escolha.

### Tela "Frases do Dia":
O usuário irá clicar no botão "Nova frase" e o aplicativo irá seleciona uma frase aleatória da lista e a exibe no centro da tela, substituindo o texto anterior, 
o usuário pode continuar clicando no botão para gerar novas frases aleatórias, sem limite.

### Tela "Jogos":
Ao usuário clicar no botão "Jogos" irá ser direcionado para uma tela onde estão 3 botôes com 3 jogos diponiveis que são
Jokenpô, Cara ou Coroa e Jogo da Velha.  

#### Jogo Jokenpô: 
Na tela de jogo "Jokenpô" ou "Pedra, Papel e Tesoura" o usuário irá jogar contra o aplicativo, escolhendo uma opção Pedra, Papel, ou Tesoura tocando na imagem correspondente
enquanto o aplicativo faz uma seleção aleatória. Uma mensagem é exibida indicando o resultado:
"Você venceu!" se a regra do Jokenpô favorecer o usuário.
"Empate!" se as escolhas forem iguais.
"Você perdeu!" caso contrário.

#### Jogo Cara ou Coroa:
Na tela de jogo "Cara ou Coroa" o usuário irá jogar contra o aplicativo, escolhendo Cara ou Coroa tocando na imagem correspondente.
Se as escolhas do usuário e do computador forem iguais, o jogador vence. Caso contrário, o aplicativo vence.

#### Jogo da Velha
No classico "Jogo da Velha" o usário pode jogar contra outro usuário, Os usuários tocam em um espaço vazio do tabuleiro para fazer sua jogada.
Irá ser marcado no tabuleiro "X" e "O" respectivamente. O aplicativo verifica a vitório ou empate se algum jogador conseguiu alinhar três símbolos iguais em uma das combinações vencedoras.
Se todas as casas foram preenchidas sem vitória, o jogo termina em empate.