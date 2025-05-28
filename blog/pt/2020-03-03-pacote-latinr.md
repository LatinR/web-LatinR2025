---
layout: post
title:  "Pacote latinr para criar e enviar trabalhos para LatinR"
isStaticPost: false
lang: pt
ref: pacote-latinr
date: 2020-03-03
---

#### Apresentando: latinr, o pacote

Nesta edição do LatinR, estrearemos uma nova forma de enviar trabalhos diretamente da sessão de R!

A ideia é facilitar ao máximo todo o processo de criação, formatação e envio de trabalhos. Com o pacote latinr, você poderá escrever a submissão com R Markdown, adicionando os detalhes no header, compilar para PDF usando o estilo da conferência e enviá-lo sem precisar preencher nenhum formulário.

É importante esclarecer que o uso do pacote não é obrigatório. Quem não se sentir confortável com R Markdown pode usar qualquer ferramenta que desejar para criar seu PDF, e quem preferir usar a interface web do EasyChair, pode fazê-lo sem problemas.

Uma segunda ressalva é que o envio de trabalhos por meio do pacote ainda é um pouco experimental, por isso pedimos que, se utilizarem, verifiquem no site se tudo foi enviado corretamente.

##### Como usar o latinr para criar trabalhos para o LatinR

A primeira coisa a fazer é, claro, instalar o pacote. Isso pode ser feito com o comando `devtools::install_github("latinr/latinr")`.

Se você usar o RStudio, vá em Arquivo -> Novo Arquivo -> R Markdown -> De Template e selecione "LatinR submission article". Coloque o nome da sua apresentação e a pasta onde deseja criá-la. Ao clicar em OK, será criado um arquivo base que você pode começar a preencher.

Você verá que todos os dados de envio vão no cabeçalho do arquivo. Pode preenchê-los manualmente, mas é mais fácil usar o "wizard" com a função `latinr::latinr_wizard()`. Isso abrirá uma interface gráfica onde você pode preencher seus dados e, no final, será mostrado um cabeçalho YAML válido para copiar e colar no seu arquivo.

![latinr wizard](/img/posts/wizard.png)

Alternativamente, você pode usar o wizard e clicar no botão "Save" no canto superior direito, o que criará o mesmo arquivo base, mas com os dados preenchidos. Em qualquer caso, o arquivo R Markdown ficará assim:

![latinr file skeleton](/img/posts/latinr-skeleton.png)

O primeiro chunk do documento verifica se a metadata está mais ou menos correta cada vez que o arquivo é renderizado. Recomendamos não editá-lo para que qualquer erro seja detectado o mais cedo possível. O restante é o documento de R Markdown de teste. Você pode tentar renderizar o arquivo ("knit") de teste para garantir que sua instalação do LaTeX está em ordem e, depois, começar a preparar sua apresentação para o LatinR!

##### Como enviar o artigo

Até aqui, o latinr permite criar um PDF com o template da conferência e corretamente anonimizado para envio. Você pode enviar esse PDF manualmente acessando a página do [EasyChair](https://bit.ly/latinr2020-easychair), mas se quiser, pode fazê-lo usando o latinr.

Em qualquer caso, você precisará [criar uma conta no EasyChair](https://easychair.org/account/signup). Depois, tem a opção de salvar seus dados de conta com `latinr::latinr_password_set()`, que pedirá seu usuário e senha. Isso não é obrigatório, mas facilita o processo. É possível que você precise instalar o pacote keyring, caso em que um erro informativo será exibido.

Finalmente, o envio é realizado com `latinr::latinr_submit()`. Por
