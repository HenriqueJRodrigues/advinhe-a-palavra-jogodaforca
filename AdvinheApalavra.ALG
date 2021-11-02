Algoritmo "praticando_Jogo_da_forca"
// Disciplina   : [Praticando]
// Autor(a)    : HenriqueJRodrigues
Var

     numeroLetras,Sorteio,tentativas,acertos,i,A,a1,novamente: inteiro
     palavraEscondida: vetor [1..10] de caracter
     palavra: vetor [1..10] de Caracter
     alfab: vetor [1..26] DE CARACTER
     dica,X:CARACTER
     ganhador,erros: logico
     
procedimento sorteiroPalavras()
var
letraRand,letraDica: inteiro
Inicio
 ganhador<- falso
 Tentativas<- 1

alfab[1]<- "a"
alfab[2]<- "b"
alfab[3]<- "c"
alfab[4]<- "d"
alfab[5]<- "e"
alfab[6]<- "f"
alfab[7]<- "g"
alfab[8]<- "h"
alfab[9]<- "i"
alfab[10]<-"j"
alfab[11]<-"k"
alfab[12]<-"l"
alfab[13]<-"m"
alfab[14]<-"n"
alfab[15]<-"o"
alfab[16]<-"p"
alfab[17]<-"q"
alfab[18]<-"r"
alfab[19]<-"s"
alfab[20]<-"t"
alfab[21]<-"u"
alfab[22]<-"v"
alfab[23]<-"w"
alfab[24]<-"x"
alfab[25]<-"y"
alfab[26]<-"z"

 Sorteio<- randi(10)+1

  escolha(Sorteio)
  caso 1
  dica<- "Fruta"
  palavra[1]<- "a"
  palavra[2]<- "m"
  palavra[3]<- "o"
  palavra[4]<- "r"
  palavra[5]<- "a"
  numeroletras <- Compr("AMORA")
  caso 2
  dica<- "Fruta"
  palavra[1]<-"b"
  palavra[2]<-"a"
  palavra[3]<-"n"
  palavra[4]<-"a"
  palavra[5]<-"n"
  palavra[6]<-"a"
  numeroletras <- Compr("BANANA")
  caso 3
  dica<- "Fruta"
  palavra[1]<-"f"
  palavra[2]<-"r"
  palavra[3]<-"a"
  palavra[4]<-"m"
  palavra[5]<-"b"
  palavra[6]<-"o"
  palavra[7]<-"e"
  palavra[8]<-"s"
  palavra[9]<-"a"
  numeroletras <- Compr("FRANBOESA")
  caso 4
  dica<- "Fruta"
  palavra[1]<-"j"
  palavra[2]<-"a"
  palavra[3]<-"b"
  palavra[4]<-"u"
  palavra[5]<-"t"
  palavra[6]<-"i"
  palavra[7]<-"c"
  palavra[8]<-"a"
  palavra[9]<-"b"
  palavra[10]<-"a"
  numeroletras <- Compr("JABUTICABA")
  caso 5
  dica<- "Fruta"
  palavra[1]<-"p"
  palavra[2]<-"a"
  palavra[3]<-"P"
  palavra[4]<-"a"
  palavra[5]<-"i"
  palavra[6]<-"a"
  numeroletras <- Compr("PAPAIA")
  caso 6
  dica<- "Países"
  palavra[1]<-"d"
  palavra[2]<-"i"
  palavra[3]<-"n"
  palavra[4]<-"a"
  palavra[5]<-"m"
  palavra[6]<-"a"
  palavra[7]<-"r"
  palavra[8]<-"c"
  palavra[9]<-"a"
  numeroletras <- Compr("DINAMARCA")
  caso 7
  dica<- "Países"
  palavra[1]<-"b"
  palavra[2]<-"r"
  palavra[3]<-"a"
  palavra[4]<-"s"
  palavra[5]<-"i"
  palavra[6]<-"l"
  numeroletras <- Compr("BRASIL")
  caso 8
  dica<- "Esportes"
  palavra[1]<-"c"
  palavra[2]<-"a"
  palavra[3]<-"n"
  palavra[4]<-"o"
  palavra[5]<-"a"
  palavra[6]<-"g"
  palavra[7]<-"e"
  palavra[8]<-"m"
  numeroletras <- Compr("CANOAGEM")
  caso 9
  dica<- "Esportes"
  palavra[1]<-"b"
  palavra[2]<-"o"
  palavra[3]<-"d"
  palavra[4]<-"y"
  palavra[5]<-"b"
  palavra[6]<-"o"
  palavra[7]<-"a"
  palavra[8]<-"r"
  palavra[9]<-"d"
  numeroletras <- Compr("BODYBOARD")
  caso 10
  dica<- "Instrumento musical"
  palavra[1]<-"v"
  palavra[2]<-"i"
  palavra[3]<-"o"
  palavra[4]<-"l"
  palavra[5]<-"o"
  palavra[6]<-"n"
  palavra[7]<-"c"
  palavra[8]<-"e"
  palavra[9]<-"l"
  palavra[10]<-"o"
  numeroletras <- Compr("VIOLONCELO")
  fimescolha
  
 para i de 1 ate numeroletras faça
 palavraEscondida[i]<- "_"
 fimpara

 letraRand <- randi(numeroletras)+1


  para i de 1 ate numeroletras faca
       se (palavra[i]= palavra[letraRand]) e (palavraEscondida[i]= "_") entao
        palavraEscondida[i]<- palavra[letraRand]
        acertos<- acertos + 1
        fimse
       fimpara

 para i de 1 ate 26 faça
  se palavra[letraRand] = alfab[i] entao
  alfab[i]<- " "
  fimse
  fimpara

fimprocedimento

//----------------------------------------

procedimento menu()
inicio


escreval(" _____________________________________________")
escreval("|                                             |")
escreval("|            _Advinhe a palavra_              |")
escreval("|_______________________________________:HRJ__|")
escreval("               Categoria: ",dica)
fimprocedimento

//-----------------------------------------
procedimento alfabeto()
inicio

     escreval()

 para i de 1 ate 26 faca
  se (X = alfab[i]) entao
    alfab[i]<- " "
  fimse
  fimpara
  
   escreva("   ")
    para i de 1 ate 13   faca
     escreva(" ")
     escreva(maiusc(alfab[i]))
     escreva(" ")

  fimpara
  
  escreval("")
  escreva("      ")
  para i de 14 ate 26   faca
    escreva(" ")
     escreva(maiusc(alfab[i]))
     escreva(" ")
  fimpara
  escreval("")

fimprocedimento
//-------------------------------------------------------
procedimento verificador()
inicio

      escreval("")
      se acertos = numeroletras entao
       escreval("            Parabéns você ganhou!")
       ganhador <- verdadeiro
       fimse

       se tentativas = 7 entao
       escreval("            - GAME OVER -")
       fimse

      escreval("")
      
fimprocedimento
//---------------------------------------------------------------
procedimento telaAtt()
inicio
     escreva("| > ")
      para i de 1 ate numeroletras faca
      se palavraEscondida[i] <> "_" entao
      escreva(" ")
     escreva(maiusc(palavraEscondida[i]))
     escreva(" ")
      senao
      escreva(" ")
     escreva(maiusc(palavraEscondida[i]))
     escreva(" ")
      fimse
      fimpara

      escreval()

fimprocedimento
//----------------------------------------------------------------

procedimento forca()
inicio

escolha tentativas
  caso 1
   escreval("")
   escreval("|--->                  1/7    ")
   escreval("|                  Tentativas")
   escreval("| ")
   escreval("| ")
  caso 2
   escreval("")
   escreval("|----->                2/7    ")
   escreval("|                  Tentativas")
   escreval("| ")
   escreval("| ")
  caso 3
   escreval("")
   escreval("|------->              3/7    ")
   escreval("|                  Tentativas")
   escreval("| ")
   escreval("| ")
  caso 4
   escreval("")
   escreval("|------------>         4/7    ")
   escreval("|                  Tentativas")
   escreval("| ")
   escreval("| ")
  caso 5
   escreval("")
   escreval("|-------------->       5/7    ")
   escreval("|                  Tentativas")
   escreval("| ")
   escreval("| ")
  caso 6
   escreval("")
   escreval("|---------------->     6/7    ")
   escreval("|                  Tentativas")
   escreval("| ")
   escreval("| ")
  caso 7
   escreval("")
   escreval("|------------------->  7/7    ")
   escreval("|                  Tentativas")
   escreval("| ")
   escreval("| ")
fimescolha

   telaAtt()

fimprocedimento

inicio

   escreval("Para uma melhor experiência utilize tela cheia  ")
   escreval("                 Boa Sorte!!!                   ")
   escreval("                                                ")
   escreva("              - APERTE ENTER -                   ")
   leia(a1)
   novamente<- 1

   enquanto novamente = 1 faça

   sorteiroPalavras()

    repita
    limpatela
    menu()
    erros<- verdadeiro
    forca()

   escreval("")
   escreval("           A palavra tem ", numeroletras, " letras ")
   escreval("")

   alfabeto()

   escreval("")
   escreva("Digite uma letra: ")
   leia(X)

   para i de 1 ate numeroletras faca
    se (palavra[i]= X) e (palavraEscondida[i]= "_") entao
     palavraEscondida[i]<- X
     acertos<- acertos + 1
     erros<- falso
    fimse
   fimpara

   se erros = verdadeiro entao
    tentativas<- tentativas +1
   fimse

   limpatela
   menu()
   forca()
   verificador()

   ate (ganhador = verdadeiro) ou (tentativas = 7)
   
   escreval("     Jogar novamente 1- SIM/ 2- NÃO ?")
   leia(novamente)

   fimenquanto
    
Fimalgoritmo