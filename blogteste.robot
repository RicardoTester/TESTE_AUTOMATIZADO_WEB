*** Settings ***
Resource   resourceblog.robot

*** Test Case ***

Caso de Teste 01: Pesquisar um post
   Acessar a página do blog
   Pesquisar por um post "Season Premiere: Introdução ao Robot Framework"
   #Conferir se aparece a mensagem "Mostrando postagens que correspondem à pesquisa por Season Premiere: Introdução ao Robot Framework"
   