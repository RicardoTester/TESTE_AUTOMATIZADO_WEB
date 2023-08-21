*** Settings ***
Library   SeleniumLibrary

*** Variable ***
${URL}                https://robotizandotestes.blogspot.com/
${BROWSER}            chrome
${BTL_PESQUISAR}      css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}    name=q
${SUBMIT_PESQUISAR}   css=input.search-action.flat-button
           
*** Keywords ***
Acessar a página do blog
  Open Browser  url=${URL}  browser=${BROWSER}
  Title Should Be   Robotizando Testes

Pesquisar por um post "${TEXTO_PESQUISAR}"
  
  Wait Until Element Is Visible   ${BTL_PESQUISAR} 
  Click Button                    ${BTL_PESQUISAR}
  Input Text                      ${INPUT_PESQUISAR}   ${TEXTO_PESQUISAR}
  Click Element                   ${SUBMIT_PESQUISAR}

Conferir mensagem de pesquisa por "${MSG_DESEJADA}" 
  
  Page Should Contain   ${MSG_DESEJADA}
  
  




 


