Algoritmo "BemStarDigital"

Var
idade, opcao, enter: inteiro
altura, peso : real
nome, snome : caractere


//Algoritmo para recusar valores invalidos (PALAVRAS)
procedimento retcara(var x:caracter)
inicio
leia(x)
 se (x = "") entao
    escreva("              *Preencha este espaço*: ")
    retcara(x)
 fimse
fimprocedimento


//Algoritmo para recusar valores invalidos (NÚMEROS)
procedimento retreal(var x:real)
inicio
leia(x)
 se(x >= 1) entao
 fimse
 se (x <= 0) entao
    escreva("              *Digite um valor válido*: ")
    retreal(x)
 fimse

fimprocedimento



//Apresentação do Programa
procedimento logo()
inicio
      limpatela()
      escreval("            ##########################################")
      escreval("            #   ___ ___ __  __   ___ _____ _   ___   #")
      escreval("            #  | _ ) __|  \/  | / __|_   _/_\ | _ \  #")
      escreval("            #  | _ \ _|| |\/| | \__ \ | |/ _ \|   /  #")
      escreval("            #  |___/___|_|  |_| |___/ |_/_/ \_\_|_\  #")
      escreval("            #      ___ ___ ___ ___ _____ _   _       #")
      escreval("            #     |   \_ _/ __|_ _|_   _/_\ | |      #")
      escreval("            #     | |) | | (_ || |  | |/ _ \| |__    #")
      escreval("            #     |___/___\___|___| |_/_/ \_\____|   #")
      escreval("            #                                        #")
      escreval("            ##########################################")
fimprocedimento



//Formulário para a declaração das variáveis
Procedimento Formulario()
inicio
      logo()
      //Perguntas do formulário
      escreval("")
      escreval("                     Formulário do Usuário")
      escreval("")
      escreval("")
      escreva("               Qual o seu nome?: ")
      retcara(nome)
      escreva("               Qual o seu sobrenome?: ")
      retcara(snome)
      escreva("               Qual a sua idade?: ")
      retreal(idade)
      escreva("               Qual a sua altura?: ")
      retreal(altura)
      escreva("               Qual o seu peso?: ")
      retreal(peso)
      limpatela()
FimProcedimento


//Menu do Programa
Procedimento menu()
var
inicio
      logo()
      //Opções
      escreval("")
      escreval("                    Usuário: "+ nome + " " + snome)
      escreval("                  Escolha o número da opção desejada")
      escreval("")
      escreval("                      [1]  Hidratação Diária")
      escreval("")
      escreval("                      [2]  Piramide Alimentar")
      escreval("")
      escreval("                      [3]  Verifique seu IMC")
      escreval("")
      escreval("                      [4] Rotina de exercícios")
      escreval("")
      escreval("                      [5]   Caixa Surpresa")
      escreval("")
      escreval("                      [6] Modificar formulário")
      escreval("")
      escreval("                      [9]        SAIR        ")
      escreval("")

      //Escolha de opção
      escreva("                              Opção: ")
      leia(opcao)
      
      //Switch-case
      escolha (opcao)
              caso 1
                   limpatela()
                   agua()
                   menu()
              caso 2
                   limpatela()
                   piramidealimentar()
              caso 3
                   limpatela()
                   imc(peso, altura)
                   menu()
              caso 4
                   limpatela()
                   rotina()
              caso 5
                   limpatela()
                   caixasurpresa()
              caso 6
                   formulario()
                   menu()
              caso 9
                   logo()
                   escreval("")
                   escreva("               Até outro dia ")
                   escreva(nome)
                   escreva(", cuide da sua saúde.")
                   escreval("")
                   escreval("                Precione ENTER para voltar ao menu")
                   leia(enter)
              outrocaso
              erro()
      fimescolha

fimprocedimento



procedimento erro()
inicio
limpatela()
escreval()
escreval("            ___   ___  ________  ____   ___        ")
escreval("           |   \ |\  \|\   __  \|\   \ |\  \       ")
escreval("           \\   \\_\  \ \  \ \  \ \   \\_\  \      ")
escreval("            \\_______  \ \  \ \  \ \______   \     ")
escreval("             \|_____|\  \ \  \_\  \ ______|\  \    ")
escreval("                     \\__\ \_______\       \\__\   ")
escreval("                      \|__|\_______|        \|__|  ")
escreval()
escreval("                 O numero digitado não existe!")
escreval()
escreval("              Precione ENTER para voltar ao menu")
leia(enter)
menu()
fimprocedimento




//Calculo Quantidade de água
procedimento agua()
var
   qtdAgua:real
   resposta:caracter
inicio
      escreval("")
      escreval("********************************************************************************************************************")
      escreval("*                          A falta da água ou o excesso não são benéficas a saúde, manter                          *")
      escreval("*                       o equilíbrio é essencial para o bom funcionamento dos órgãos vitais.                       *")
      escreval("*                                                                                                                  *")
      escreval("*          Você gostaria de saber a quantidade ideal de água que deve ingerir para ter um corpo saudável?          *")
      escreval("********************************************************************************************************************")
      escreval("")
      escreval("                                                      [S|N]")
      escreva("                                                        ")
      retcara(resposta)
      escreval("")


      se (resposta="s") ou (resposta="S") entao
         qtdAgua<- peso * 0.035
         escreval("********************************************************************************************************************")
         escreva("*                A quantidade mínima de água que você deve beber por dia é de ")
         escreva(qtdAgua:4:2)
         escreval(" litros por dia                  *")
         escreval("********************************************************************************************************************")
         escreval("")
         escreval("                                            Não esqueça de beber água! :D")
         escreval("                                          Precione ENTER para voltar ao menu")
         leia(enter)
      senao (resposta="n") ou (resposta="N")
         escreval("                                            Não esqueça de beber água! :D")
         escreval("                                          Precione ENTER para voltar ao menu")
         leia(enter)
      fimse

Fimprocedimento


//Calculo do IMC
procedimento imc(x, y: real)
Var
n1, n2: real
Inicio
      escreval("")
      escreval("********************************************************************************************************************")
      escreval("*                                    IMC é o índice de massa corpórea.                                             *")
      escreval("*          O cálculo do IMC é importante para avaliar os riscos de obesidade e encontrar seu peso ideial.          *")
      escreval("********************************************************************************************************************")
      escreval("")
      escreval("                           -----------------------------------------------------")
      escreval("                           |                    Tabela de IMC                  |")
      escreval("                           -----------------------------------------------------")
      escreval("                           |     Menor que 16,9       |   Muito abaixo do peso |")
      escreval("                           |       17 a 18,4          |       Abaixo do peso   |")
      escreval("                           |      18,5 a 24,9         |        Peso normal     |")
      escreval("                           |       25 a 29,9          |       Acima do peso    |")
      escreval("                           |       30 a 34,9          |      Obesidade grau 1  |")
      escreval("                           -----------------------------------------------------")
      n1 <- y*y
      n2 <- x/n1
      escreval("")
      escreval("                                          O seu IMC é: ", n2:2:2)
      escreval("")
      escreval("                                     Precione ENTER para voltar ao menu")
      leia(enter)
fimprocedimento



//Piramide Alimentar
procedimento piramidealimentar()
Var
// Seção de Declarações das variáveis
    i: inteiro
    menu: inteiro
    opcao: inteiro
    enter: caracter
    saida: caracter
    cafeDaManha: vetor [1..3] de caractere
    almoco: vetor [1..3] de caractere
    lanche: vetor [1..3] de caractere
    jantar: vetor [1..3] de caractere

Inicio
// Seção dos indíces dos vetores
    cafeDaManha[1] <- "6 unidades de bolacha água e sal, 200g de iogurte natural e uma fruta"
    cafeDaManha[2] <- "1 unidade de pão francês, 1 copo de leite integral e uma fruta"
    cafeDaManha[3] <- "1 fatia e meia de queijo minas, 2 fatis de pão de forma integral 200g de iogurte natural e uma fruta"
    almoco[1] <- "arroz com feijão, 1 bife, salada de alface e tomate, cenoura crua picada, salada de fruta"
    almoco[2] <- "purê de batata, feijão, 2 ovos cozidos, salada de alface e tomate, salada de fruta"
    almoco[3] <- "arroz integral, feijão, filé de frango grelhado, espinafre refogado, salada de rúcula, pepino e cenoura"
    lanche[1] <- "iogurte natural e 2 fatias de pão de forma integral"
    lanche[2] <- "salada de frutas e 1 fatia de queijo minas"
    lanche[3] <- "sucos e vitaminas de frutas e 1 pão francês"
    jantar[1] <- "macarrão, grão-de-bico, 1 filé de peixe, salada de alface, cenoura crua picada, salada de frutas"
    jantar[2] <- "arroz integral, feijão, filé de frango grelhado, espinafre refogado, salada de rúcula, pepino e cenoura"
    jantar[3] <- "purê de batata, feijão, 2 ovos cozidos, salada de alface e tomate, salada de fruta"
// Seção de apresentação da pirâmide
  escreval("            ============================================================================================")
  escreval("                   A pirâmide alimentar é uma representação gráfica com informações que")
  escreval("                         remetem aos grupos de alimentos presentes em nossa dieta.")
  escreval()
  escreval()
  escreval("                   Seu objetivo é garantir o bem-estar nutricional da população, informando-a,")
  escreval("                     principalmente, sobre as porções recomendadas de cada tipo de alimento")
  escreval()
  escreval()
  escreval("                                      PRESSIONE ENTER PARA CONTINUAR")
  escreval()
  escreval("            ============================================================================================")
  // Seção da pirâmide
  escreval()
  escreva("                                                  /\ ")
  escreval()
  escreva("                                                 /  \ ")
  escreval()
  escreva("                                                /    \     ")
  escreval()
  escreva("                                               / óleo \ ")
  escreval()
  escreva("                                              /gorduras\ ")
  escreval()
  escreva("                                             /----------\ ")
  escreval()
  escreva("                                            /  |     |   \ ")
  escreval()
  escreva("                                           /   |     |    \ ")
  escreval()
  escreva("                                          /    |     |     \ ")
  escreval()
  escreva("                                         /leite|carne|feijão\ ")
  escreval()
  escreva("                                        /queijo|peixe|ervilha\ ")
  escreval()
  escreva("                                       / e etc | ovo |lentilha\ ")
  escreval()
  escreva("                                      /------------------------\ ")
  escreval()
  escreva("                                     /            |             \ ")
  escreval()
  escreva("                                    /             |              \ ")
  escreval()
  escreva("                                   /  hortaliças  |     frutas    \ ")
  escreval()
  escreva("                                  /               |                \ ")
  escreval()
  escreva("                                 /                |                 \ ")
  escreval()
  escreva("                                /                 |                  \ ")
  escreval()
  escreva("                               /--------------------------------------\ ")
  escreval()
  escreva("                              /                                        \ ")
  escreval()
  escreva("                             /                                          \ ")
  escreval()
  escreva("                            /                cereais                     \ ")
  escreval()
  escreva("                           /                 tubérculos                   \ ")
  escreval()
  escreva("                          /                      e                         \ ")
  escreval()
  escreva("                         /                     raízes                       \ ")
  escreval()
  escreva("                        /                                                    \ ")
  escreval()
  escreva("                       /______________________________________________________\ ")
  escreval()
  LEIA(enter)
  limpatela
  //Seção de interação com o usuário

  escreval()
  escreval("            ============================================================================================")
  escreval("            |Segundo os estudiosos da área, o ideal é consumir ao menos um item de cada elemento da pirâmide")
  escreval("            |para ter uma dieta equilibrada. Agora, vamos dar algumas ideias do que consumir em cada refeição?")
  escreval("            |Digite um número de 1 a 3 em cada item abaixo e veja sugestões de cardápio")

  //Escolha de sugestões de cardápio
  escreva("            |CAFÉ DA MANHÃ: ")
  leia(opcao)
   enquanto (opcao > 3) ou (opcao < 1) faca
      escreval("            | > Opção inválida, digite um número 1 a 3")
      escreva("            |CAFÉ DA MANHÃ: ")
      leia(opcao)
   fimenquanto

   se opcao=1 entao
      escreval("            | > ",cafeDaManha[1])
      fimse
   se opcao=2 entao
      escreval("            | > ",cafeDaManha[2])
      fimse
   se opcao=3 entao
      escreval("            | > ",cafeDaManha[3])
   fimse

  escreval("            |")
  escreva("            |ALMOÇO: ")
  leia(opcao)
   enquanto (opcao > 3) ou (opcao < 1) faca
   escreval("            | > Opção inválida, digite um número 1 a 3")
   escreva("            |ALMOÇO: ")
      leia(opcao)
   fimenquanto

   se opcao=1 entao
      escreval("            | > ",almoco[1])
   fimse
   se opcao=2 entao
      escreval("            | > ",almoco[2])
   fimse
   se opcao=3 entao
      escreval("            | > ",almoco[3])
   fimse
   escreval("            |")
   escreva("            |JANTAR: ")

   leia(opcao)
   enquanto (opcao > 3) ou (opcao < 1) faca
   escreval("            | > Opção inválida, digite um número 1 a 3")
   escreva("            |JANTAR: ")
   leia(opcao)
   fimenquanto

   se opcao=1 entao
      escreval("            | > ",jantar[1])
      fimse
   se opcao=2 entao
      escreval("            | > ",jantar[2])
      fimse
   se opcao=3 entao
      escreval("            | > ",jantar[3])
      fimse
  escreval("            |")
  escreva("            |LANCHES: ")

  leia(opcao)
  enquanto (opcao > 3) ou (opcao < 1) faca
     escreval("            | > Opção inválida, digite um número 1 a 3")
     escreva("            |LANCHES: ")
     leia(opcao)
  fimenquanto

  se opcao=1 entao
     escreval("            | > ",lanche[1])
  fimse
  se opcao=2 entao
     escreval("            | > ",lanche[2])
  fimse
  se opcao=3 entao
     escreval("            | > ",lanche[3])
  fimse

   //Fim da interação principal
   escreval("            ============================================================================================")
   escreval()

   //Retornar ao menu
   escreval("                                     DESEJA RETORNAR AO MENU PRINCIPAL? S ou N")
    escreva("                                                         ")
    retcara(saida)
    se (saida = "S") ou (saida = "s") entao
       menu()
    senão (saida = "N") ou (saida = "n")
          limpatela()
          piramidealimentar()
    fimse
fimprocedimento



//Dica surpresa!!
procedimento caixasurpresa()
Var
// Seção de Declarações das variáveis
 dicas: vetor[1..5,1..3] de caractere
 i, j, enter: inteiro
 saida: caractere

Inicio
// Seção de dicas aleatórias
    dicas[1,1] <- "Inclua frutas e vegetais na alimentação: eles ajudam na manutenção da saúde do nosso organismo"
    dicas[2,1] <- "Evite alimentos ultraprocessados: eles tem altas quantidades de sódio e outros produtos que aumentam risco de doenças"
    dicas[3,1] <- "Visite o médico anter de inciar atividades físicas: busque orientação médica para entender seu estado de saúde"
    dicas[4,1] <- "Combine alimentação saudável e exercícios: alie uma boa nutrição com a prática regular de exercícios para manter o corpo saudável e ativo"
    dicas[5,1] <- "Tenha uma boa noite de sono: durante o sono o corpo libera o hormônio de crescimento, que ajuda na recuperação e crescimento muscular"
    dicas[1,2] <- "Respire novos ares: abra a janela e deixe que o ar seja renovado evitando excesso de poeira e microorganismos que causam doenças respiratórias"
    dicas[2,2] <- "Vacine-se contra doenças sazonais: a maior aglomeração em ambientes fechados facilita a transmissão de vírus, como os da gripe, por isso proteja-se"
    dicas[3,2] <- "Proteja sua pele dos raios UV: use filtro solar e evite a exposição solar em horários de maior incidência de raios solares que causam queimaduras"
    dicas[4,2] <- "Beba bastante água: o aumento da transpiração e do consumo de bebidas alcoólicas são comuns, fazendo com que o corpo necessite da reposição de líquidos"
    dicas[5,2] <- "Equilibre vida pessoal e trabalho: procure balancear as obrigações do cotidiano com a vida pessoal e evite potenciais esgotamentos, como o burnout"
    dicas[1,3] <- "Dê preferência a refeições mais saudáveis: mesmo na correria do dia a dia, é importante escolher o que comer e optar por opções saudáveis"
    dicas[2,3] <- "Cuide da higiene íntima: O ambiente úmido da região é muito favorável a esses microorganismos, especialmente durante a menstruação"
    dicas[3,3] <- "Mantenha o cérebro ativo: realize atividades que estimulam o cérebro pois elas retardam o surgimento de doenças neurológicas"
    dicas[4,3] <- "Procure acompanhamento médico: Realizar consultas e exames periodicamente evitam muitos problemas"
    dicas[5,3] <- "Realizar consultas ao nutricionista: visite o nutricionista para guiar você para uma melhor relação com a comida"

//Caixa surpresa
    escreval("========================================================================================================================================================================")
    escreval("|                                                             BEM VINDO(A) A CAIXA SURPRESA!                                                                            |")
    escreval("|                                                                                                                                                                       |")
    escreval("|                                      O SISTEMA GERARÁ UMA DICA SURPRESA ESPECIAL. A CADA ACESSO, UMA DICA! VAMOS COMEÇAR?                                             |")                                                                                                     |")
    escreval("|                                                                                                                                                                       |")
    escreval("|                                                               APERTE ENTER PARA COMEÇAR                                                                               |")
    escreval("========================================================================================================================================================================")
    leia(enter)

//logica do programa

    i<- randi(5) + 1
    j<- randi(3) + 1
    dicas[i,j)
    escreval("========================================================================================================================================================================")
    escreval()
    escreval("-> ", dicas[i,j])
    escreval()
    escreval("========================================================================================================================================================================")

//Retorno ao menu
    escreval()
    escreval(">                                                        DESEJA GERAR UMA NOVA DICA? S ou N: ")
    escreva("                                                                          ")
    retcara(saida)
    se (saida = "S") ou (saida = "s") entao
       limpatela()
       caixasurpresa()
       senao (saida = "N") ou (saida = "n")
             menu()
    fimse
fimprocedimento

procedimento Rotina()
var
   Opcao: Inteiro
   saida: caractere
inicio
      Escreval("==================================================================")
      Escreval("              R O T I N A  DE  E X E R C Í C I O S                ")
      Escreval("              Oferecimento: Bem - Star Digital  ")
      Escreval("==================================================================")
      Escreval(" [1] para exercícios direcionados aos membros superiores ")
      Escreval(" [2] para exercícios direcionados aos membros inferiores ")
      Escreval(" [3] para exercícios direcionados ao coração ")
      Leia(Opcao)
      Escreval("==================================================================")
      Escolha Opcao
         Caso 1
           Escreval("Temos como sugestão: Flexão de braço, faça 12 repetições; Remada com Halteres, faça 15;")
           Escreval("Elevação frontal, faça 10 repetições; Elevação lateral, faça 12 repetições;")
           Escreval("Rosca Hammer, faça 12 repetições e Tríceps Francês, ao terminar a série repita 2 vezes.")
         Caso 2
           Escreval("Temos como sugestão: Agachamento, Leg Press, Búlgaro, Stiff e Avanço")
         Caso 3
           Escreval("Temos como sugestão: Caminhada ao ar livre, faça 1 hora durante 3 vezes por semana;")
           Escreval("Corrida, faça 30 minutos 3 vezes por semana; Ciclismo, faça 2 vezes por semana;")
           Escreval("Spinning, faça 45 minutos de 2 ou 3 vezes por semana; e Zumba, faça 45 minutos 3 vezes por semana.")
         FimEscolha
      Escreval("         ============================================")
      Escreval("          Boa sorte nos exercícios e não exagere! :D ")
      Escreval("         ============================================")
      Escreval()
      Escreva("           Deseja ver outros exercicios? [S|N]: ")
      retcara(saida)
      se (saida = "S") ou (saida = "s") entao
         limpatela()
         rotina()
      senao (saida = "N") ou (saida = "n")
            menu()
      fimse
fimprocedimento




//Principal
Inicio
      formulario()
      menu()
Fimalgoritmo