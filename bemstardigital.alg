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
    escreva("              *Preencha este espa�o*: ")
    retcara(x)
 fimse
fimprocedimento


//Algoritmo para recusar valores invalidos (N�MEROS)
procedimento retreal(var x:real)
inicio
leia(x)
 se(x >= 1) entao
 fimse
 se (x <= 0) entao
    escreva("              *Digite um valor v�lido*: ")
    retreal(x)
 fimse

fimprocedimento



//Apresenta��o do Programa
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



//Formul�rio para a declara��o das vari�veis
Procedimento Formulario()
inicio
      logo()
      //Perguntas do formul�rio
      escreval("")
      escreval("                     Formul�rio do Usu�rio")
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
      //Op��es
      escreval("")
      escreval("                    Usu�rio: "+ nome + " " + snome)
      escreval("                  Escolha o n�mero da op��o desejada")
      escreval("")
      escreval("                      [1]  Hidrata��o Di�ria")
      escreval("")
      escreval("                      [2]  Piramide Alimentar")
      escreval("")
      escreval("                      [3]  Verifique seu IMC")
      escreval("")
      escreval("                      [4] Rotina de exerc�cios")
      escreval("")
      escreval("                      [5]   Caixa Surpresa")
      escreval("")
      escreval("                      [6] Modificar formul�rio")
      escreval("")
      escreval("                      [9]        SAIR        ")
      escreval("")

      //Escolha de op��o
      escreva("                              Op��o: ")
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
                   escreva("               At� outro dia ")
                   escreva(nome)
                   escreva(", cuide da sua sa�de.")
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
escreval("                 O numero digitado n�o existe!")
escreval()
escreval("              Precione ENTER para voltar ao menu")
leia(enter)
menu()
fimprocedimento




//Calculo Quantidade de �gua
procedimento agua()
var
   qtdAgua:real
   resposta:caracter
inicio
      escreval("")
      escreval("********************************************************************************************************************")
      escreval("*                          A falta da �gua ou o excesso n�o s�o ben�ficas a sa�de, manter                          *")
      escreval("*                       o equil�brio � essencial para o bom funcionamento dos �rg�os vitais.                       *")
      escreval("*                                                                                                                  *")
      escreval("*          Voc� gostaria de saber a quantidade ideal de �gua que deve ingerir para ter um corpo saud�vel?          *")
      escreval("********************************************************************************************************************")
      escreval("")
      escreval("                                                      [S|N]")
      escreva("                                                        ")
      retcara(resposta)
      escreval("")


      se (resposta="s") ou (resposta="S") entao
         qtdAgua<- peso * 0.035
         escreval("********************************************************************************************************************")
         escreva("*                A quantidade m�nima de �gua que voc� deve beber por dia � de ")
         escreva(qtdAgua:4:2)
         escreval(" litros por dia                  *")
         escreval("********************************************************************************************************************")
         escreval("")
         escreval("                                            N�o esque�a de beber �gua! :D")
         escreval("                                          Precione ENTER para voltar ao menu")
         leia(enter)
      senao (resposta="n") ou (resposta="N")
         escreval("                                            N�o esque�a de beber �gua! :D")
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
      escreval("*                                    IMC � o �ndice de massa corp�rea.                                             *")
      escreval("*          O c�lculo do IMC � importante para avaliar os riscos de obesidade e encontrar seu peso ideial.          *")
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
      escreval("                                          O seu IMC �: ", n2:2:2)
      escreval("")
      escreval("                                     Precione ENTER para voltar ao menu")
      leia(enter)
fimprocedimento



//Piramide Alimentar
procedimento piramidealimentar()
Var
// Se��o de Declara��es das vari�veis
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
// Se��o dos ind�ces dos vetores
    cafeDaManha[1] <- "6 unidades de bolacha �gua e sal, 200g de iogurte natural e uma fruta"
    cafeDaManha[2] <- "1 unidade de p�o franc�s, 1 copo de leite integral e uma fruta"
    cafeDaManha[3] <- "1 fatia e meia de queijo minas, 2 fatis de p�o de forma integral 200g de iogurte natural e uma fruta"
    almoco[1] <- "arroz com feij�o, 1 bife, salada de alface e tomate, cenoura crua picada, salada de fruta"
    almoco[2] <- "pur� de batata, feij�o, 2 ovos cozidos, salada de alface e tomate, salada de fruta"
    almoco[3] <- "arroz integral, feij�o, fil� de frango grelhado, espinafre refogado, salada de r�cula, pepino e cenoura"
    lanche[1] <- "iogurte natural e 2 fatias de p�o de forma integral"
    lanche[2] <- "salada de frutas e 1 fatia de queijo minas"
    lanche[3] <- "sucos e vitaminas de frutas e 1 p�o franc�s"
    jantar[1] <- "macarr�o, gr�o-de-bico, 1 fil� de peixe, salada de alface, cenoura crua picada, salada de frutas"
    jantar[2] <- "arroz integral, feij�o, fil� de frango grelhado, espinafre refogado, salada de r�cula, pepino e cenoura"
    jantar[3] <- "pur� de batata, feij�o, 2 ovos cozidos, salada de alface e tomate, salada de fruta"
// Se��o de apresenta��o da pir�mide
  escreval("            ============================================================================================")
  escreval("                   A pir�mide alimentar � uma representa��o gr�fica com informa��es que")
  escreval("                         remetem aos grupos de alimentos presentes em nossa dieta.")
  escreval()
  escreval()
  escreval("                   Seu objetivo � garantir o bem-estar nutricional da popula��o, informando-a,")
  escreval("                     principalmente, sobre as por��es recomendadas de cada tipo de alimento")
  escreval()
  escreval()
  escreval("                                      PRESSIONE ENTER PARA CONTINUAR")
  escreval()
  escreval("            ============================================================================================")
  // Se��o da pir�mide
  escreval()
  escreva("                                                  /\ ")
  escreval()
  escreva("                                                 /  \ ")
  escreval()
  escreva("                                                /    \     ")
  escreval()
  escreva("                                               / �leo \ ")
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
  escreva("                                         /leite|carne|feij�o\ ")
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
  escreva("                                   /  hortali�as  |     frutas    \ ")
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
  escreva("                           /                 tub�rculos                   \ ")
  escreval()
  escreva("                          /                      e                         \ ")
  escreval()
  escreva("                         /                     ra�zes                       \ ")
  escreval()
  escreva("                        /                                                    \ ")
  escreval()
  escreva("                       /______________________________________________________\ ")
  escreval()
  LEIA(enter)
  limpatela
  //Se��o de intera��o com o usu�rio

  escreval()
  escreval("            ============================================================================================")
  escreval("            |Segundo os estudiosos da �rea, o ideal � consumir ao menos um item de cada elemento da pir�mide")
  escreval("            |para ter uma dieta equilibrada. Agora, vamos dar algumas ideias do que consumir em cada refei��o?")
  escreval("            |Digite um n�mero de 1 a 3 em cada item abaixo e veja sugest�es de card�pio")

  //Escolha de sugest�es de card�pio
  escreva("            |CAF� DA MANH�: ")
  leia(opcao)
   enquanto (opcao > 3) ou (opcao < 1) faca
      escreval("            | > Op��o inv�lida, digite um n�mero 1 a 3")
      escreva("            |CAF� DA MANH�: ")
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
  escreva("            |ALMO�O: ")
  leia(opcao)
   enquanto (opcao > 3) ou (opcao < 1) faca
   escreval("            | > Op��o inv�lida, digite um n�mero 1 a 3")
   escreva("            |ALMO�O: ")
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
   escreval("            | > Op��o inv�lida, digite um n�mero 1 a 3")
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
     escreval("            | > Op��o inv�lida, digite um n�mero 1 a 3")
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

   //Fim da intera��o principal
   escreval("            ============================================================================================")
   escreval()

   //Retornar ao menu
   escreval("                                     DESEJA RETORNAR AO MENU PRINCIPAL? S ou N")
    escreva("                                                         ")
    retcara(saida)
    se (saida = "S") ou (saida = "s") entao
       menu()
    sen�o (saida = "N") ou (saida = "n")
          limpatela()
          piramidealimentar()
    fimse
fimprocedimento



//Dica surpresa!!
procedimento caixasurpresa()
Var
// Se��o de Declara��es das vari�veis
 dicas: vetor[1..5,1..3] de caractere
 i, j, enter: inteiro
 saida: caractere

Inicio
// Se��o de dicas aleat�rias
    dicas[1,1] <- "Inclua frutas e vegetais na alimenta��o: eles ajudam na manuten��o da sa�de do nosso organismo"
    dicas[2,1] <- "Evite alimentos ultraprocessados: eles tem altas quantidades de s�dio e outros produtos que aumentam risco de doen�as"
    dicas[3,1] <- "Visite o m�dico anter de inciar atividades f�sicas: busque orienta��o m�dica para entender seu estado de sa�de"
    dicas[4,1] <- "Combine alimenta��o saud�vel e exerc�cios: alie uma boa nutri��o com a pr�tica regular de exerc�cios para manter o corpo saud�vel e ativo"
    dicas[5,1] <- "Tenha uma boa noite de sono: durante o sono o corpo libera o horm�nio de crescimento, que ajuda na recupera��o e crescimento muscular"
    dicas[1,2] <- "Respire novos ares: abra a janela e deixe que o ar seja renovado evitando excesso de poeira e microorganismos que causam doen�as respirat�rias"
    dicas[2,2] <- "Vacine-se contra doen�as sazonais: a maior aglomera��o em ambientes fechados facilita a transmiss�o de v�rus, como os da gripe, por isso proteja-se"
    dicas[3,2] <- "Proteja sua pele dos raios UV: use filtro solar e evite a exposi��o solar em hor�rios de maior incid�ncia de raios solares que causam queimaduras"
    dicas[4,2] <- "Beba bastante �gua: o aumento da transpira��o e do consumo de bebidas alco�licas s�o comuns, fazendo com que o corpo necessite da reposi��o de l�quidos"
    dicas[5,2] <- "Equilibre vida pessoal e trabalho: procure balancear as obriga��es do cotidiano com a vida pessoal e evite potenciais esgotamentos, como o burnout"
    dicas[1,3] <- "D� prefer�ncia a refei��es mais saud�veis: mesmo na correria do dia a dia, � importante escolher o que comer e optar por op��es saud�veis"
    dicas[2,3] <- "Cuide da higiene �ntima: O ambiente �mido da regi�o � muito favor�vel a esses microorganismos, especialmente durante a menstrua��o"
    dicas[3,3] <- "Mantenha o c�rebro ativo: realize atividades que estimulam o c�rebro pois elas retardam o surgimento de doen�as neurol�gicas"
    dicas[4,3] <- "Procure acompanhamento m�dico: Realizar consultas e exames periodicamente evitam muitos problemas"
    dicas[5,3] <- "Realizar consultas ao nutricionista: visite o nutricionista para guiar voc� para uma melhor rela��o com a comida"

//Caixa surpresa
    escreval("========================================================================================================================================================================")
    escreval("|                                                             BEM VINDO(A) A CAIXA SURPRESA!                                                                            |")
    escreval("|                                                                                                                                                                       |")
    escreval("|                                      O SISTEMA GERAR� UMA DICA SURPRESA ESPECIAL. A CADA ACESSO, UMA DICA! VAMOS COME�AR?                                             |")                                                                                                     |")
    escreval("|                                                                                                                                                                       |")
    escreval("|                                                               APERTE ENTER PARA COME�AR                                                                               |")
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
      Escreval("              R O T I N A  DE  E X E R C � C I O S                ")
      Escreval("              Oferecimento: Bem - Star Digital  ")
      Escreval("==================================================================")
      Escreval(" [1] para exerc�cios direcionados aos membros superiores ")
      Escreval(" [2] para exerc�cios direcionados aos membros inferiores ")
      Escreval(" [3] para exerc�cios direcionados ao cora��o ")
      Leia(Opcao)
      Escreval("==================================================================")
      Escolha Opcao
         Caso 1
           Escreval("Temos como sugest�o: Flex�o de bra�o, fa�a 12 repeti��es; Remada com Halteres, fa�a 15;")
           Escreval("Eleva��o frontal, fa�a 10 repeti��es; Eleva��o lateral, fa�a 12 repeti��es;")
           Escreval("Rosca Hammer, fa�a 12 repeti��es e Tr�ceps Franc�s, ao terminar a s�rie repita 2 vezes.")
         Caso 2
           Escreval("Temos como sugest�o: Agachamento, Leg Press, B�lgaro, Stiff e Avan�o")
         Caso 3
           Escreval("Temos como sugest�o: Caminhada ao ar livre, fa�a 1 hora durante 3 vezes por semana;")
           Escreval("Corrida, fa�a 30 minutos 3 vezes por semana; Ciclismo, fa�a 2 vezes por semana;")
           Escreval("Spinning, fa�a 45 minutos de 2 ou 3 vezes por semana; e Zumba, fa�a 45 minutos 3 vezes por semana.")
         FimEscolha
      Escreval("         ============================================")
      Escreval("          Boa sorte nos exerc�cios e n�o exagere! :D ")
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