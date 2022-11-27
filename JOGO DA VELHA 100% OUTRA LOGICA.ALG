Algoritmo "semnome"
Var
jogaste: vetor [1..3,1..3] de caractere
X,Y,cONTADOR,q,qq,cot,cont: inteiro
OX,enter: caractere
vencedor: logico
 PROCEDIMENTO prencherT() // ----------------------------------------------
 INICIO
 para X de 1 ate 3 faca
   para Y de 1 ate 3 faca
      contador <- contador + 1
     jogASTE[x,y] <- NumpCarac(contador)
   fimpara
 fimpara
  escreval("                 {Jogo Da Velha}")
 escreval("  +~~~~~~~~~~~~~+~~+~~~~~~~~~~~~~+~~+~~~~~~~~~~~~~+")
 para X de 1 ate 3 faca
    escreval("  |             |  |             |  |             |")
  Para Y de 1 ate 3 faca
    escreva("  ")
       escreva("|")
   escreva(":)  ",Jogaste[X,Y]:9)
    escreva("|")
 fimpara
     escreval("")
  escreval("  |             |  |             |  |             |")
  escreval("  +~~~~~~~~~~~~~+~~+~~~~~~~~~~~~~+~~+~~~~~~~~~~~~~+")
 Fimpara
    escreval("             Aperte Enter Para Iniciar")
   escreva("                           ")
  leia(Enter)
FIMPROCEDIMENTO
 PROCEDIMENTO Tabela() //  -----------------------------------------------
 INICIO
  LimpaTela
 escreval("    {Jogo Da Velha}")
 escreval(" +~~~~+~~~~+~~~~+~~~~+")
 para X de 1 ate 3 faca
    escreval(" |     \      \      |")
  Para Y de 1 ate 3 faca
   escreva(" | ",Jogaste[X,Y]:3," ")
 fimpara
        escreva("|")
     escreval(" ")
  escreval(" |     /      /      |")
  escreval(" +~~~~+~~~~+~~~~+~~~~+")
 Fimpara
FIMPROCEDIMENTO
 PROCEDIMENTO VerificadorTronco() //  ----------------------------------------
 inicio
 OX <- "O"
 vencedor <- falso
    cot <- 0
   cont <- 1
 REPITA
 escreval("      JOGADOR ",OX)
 escreval("Aonde Deseja jogar ",OX,"?:")
 leia(Q)
  SE (Q>0) e (Q<10) entao
   SE(Q>0) e (Q<4) entao
    QQ <- 1
     se (jogaste[QQ,Q] = "X") ou (jogaste[QQ,Q] = "O") ENTAO
      escreval("    &RRoR 404  ")
      escreval("Lugar já selecionado, Selecione outro!")
      leia(Enter)
     senao
      jogaste[QQ,Q] <- OX
      colocador()
     fimse
    SENAO
     SE(Q>3) e (Q<7) entao
      QQ <- 2
       se (jogaste[QQ,Q-3] =  "X") ou (Jogaste[QQ,Q-3] = "O") ENTAO
        escreval("    &RRoR 404  ")
        escreval("Lugar já selecionado, Selecione outro!")
        leia(Enter)
       senao
        jogaste[QQ,Q-3] <- OX
        colocador()
       fimse
      SENAO
      SE(Q>6) e (Q<11) entao
       QQ <- 3
        se(jogaste[QQ,Q-6] = "X") ou (Jogaste[QQ,Q-6] = "O") ENTAO
         escreval("    &RRoR 404  ")
         escreval("Lugar já selecionado, Selecione outro!")
         leia(Enter)
        senao
        jogaste[QQ,Q-6] <- OX
        colocador()
       FIMSE
      fimse
     fimse
    fimse
   limpatela
   Tabela()
    senao
escreval("Tentativa inválida,Digte uma válida!")
leia(enter)
fimse
ate (vencedor = verdadeiro) ou (cot=9)
se vencedor = verdadeiro entao
escreval("O Ganhador foi o jogador ",OX," Parabéns!")
senao
escreval("     Deu Velha")
fimse
fimprocedimento
  PROCEDIMENTO colocador() // -------------------------------------------
  INICIO
  vencedor <- QuemGanhou()
  cot <- cot + 1
  se vencedor = falso entao
   se cont % 2 = 0 entao
    OX <- "O"
    senao
    OX <- "X"
   fimse
   cont <- cont + 1
  fimse
fimprocedimento
  FUNCAO QuemGanhou(): logico // ------------------------------------------
   var
   vence: logico
   INICIO
   vence <- falso
   para X de 1 ate 3 faca
    se (jogaste[x,1] = jogaste[x,2]) e (jogaste[x,2] = jogaste[x,3]) entao
    vence <- verdadeiro
    fimse
   fimpara
   para X de 1 ate 3 faca
    se (jogaste[1,x] = jogaste[2,x]) e (jogaste[2,x] = jogaste[3,x]) entao
    vence <- verdadeiro
    fimse
   fimpara
    se(jogaste[1,3] = jogaste[2,2]) e (jogaste[2,2] = jogaste[3,1]) entao
    vence <- verdadeiro
    fimse
    se(jogaste[3,3] = jogaste[1,1]) e (jogaste[1,1] = jogaste[2,2]) entao
    vence <- verdadeiro
    fimse
   RETORNE Vence
  FIMFUNCAO
Inicio
prencherT()
Tabela()
VerificadorTronco()
Fimalgoritmo