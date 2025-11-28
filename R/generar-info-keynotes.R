generar_info_keynotes <- function() {
  tibble::tibble(
    name = "Heather Turner",
    href = "https://warwick.ac.uk/go/heatherturner",
    img = "img/posts/heatherT.jpg",
    info_es = "Heather Turner es investigadora en ingeniería de software científico y profesora asociada de estadística en la Universidad de Warwick, Reino Unido. Participa activamente en la comunidad de R; en particular, forma parte de la junta directiva de la Fundación R (R Foundation) y preside tanto el Grupo de Trabajo de Contribución de R (R Contribution Working Group) como la iniciativa Forwards para grupos subrepresentados.",
    info_en = "Heather Turner is a Research Software Engineering Fellow and Associate Professor in Statistics at the University of Warwick, UK. She is an active member of the R community, in particular, she is on the board of the R Foundation and chairs both the R Contribution Working Group and the Forwards taskforce for underrepresented groups.",
    info_pt = "Heather Turner é pesquisadora em Engenharia de Software Científico e professora associada de Estatística na Universidade de Warwick, Reino Unido. Ela participa ativamente da comunidade R; em particular, faz parte da diretoria da Fundação R (R Foundation) e preside tanto o Grupo de Trabalho de Contribuição do R (R Contribution Working Group) quanto a iniciativa Forwards para grupos sub-representados."
  ) |> 
     tibble::add_row(
       name = "Stephanie Zimmer",
       href = "https://github.com/szimmer",
       img = "img/posts/StephanieZ.jpg",
       info_es = "Stephanie Zimmer es una estadística senior en RTI con una década de experiencia en muestreo y diseño de encuestas, ponderación y análisis de datos, y gestión de datos. Es una experta en  programación estadística, instructora certificada, y coautora del libro Exploring Complex Survey Data Analysis Using R.",
       info_pt = "Stephanie Zimmer é uma estatística sênior na RTI com uma década de experiência em amostragem e desenho de pesquisas, ponderação e análise de dados, e gestão de dados. Ela é especialista em programação estatística, instrutora certificada, e coautora do livro Exploring Complex Survey Data Analysis Using R.",
       info_en = "Stephanie Zimmer is a Senior Research Statistician at RTI with a decade of experience in survey sampling and design, survey weighting and analysis, and data management. Stephanie is an expert statistical programmer and instructor and she and co‑authored the book Exploring Complex Survey Data Analysis Using R."
     ) |> 
     tibble::add_row(
       name = "Equipo TRACE-LAC",
       href = "https://medicina.javeriana.edu.co/trace-lac",
       img = "img/posts/logo-tracelac.png",
       info_es = "TRACE-LAC es un proyecto financiado por el International Development Research Centre, liderado por la Pontificia Universidad Javeriana y la Universidad de los Andes. Busca informar sobre la toma de decisiones en la respuesta a epidemias por enfermedades infecciosas en Latinoamérica y el Caribe. TRACE-LAC está articulado con las iniciativas TRACE y Epiverse lideradas por el London School of Hygiene and Tropical Medicine en colaboración con el Medical Research Council Unit en Gambia.",
       info_pt = "TRACE-LAC é um projeto financiado pelo International Development Research Centre, liderado pela Pontifícia Universidade Javeriana e a Universidade dos Andes. Busca informar sobre a tomada de decisões na resposta a epidemias por doenças infecciosas na América Latina e Caribe. TRACE-LAC está articulado com as iniciativas TRACE e Epiverse lideradas pela London School of Hygiene and Tropical Medicine em colaboração com o Medical Research Council Unit na Gâmbia.",
       info_en = "TRACE-LAC is a project funded by the International Development Research Centre, led by Pontificia Universidad Javeriana and Universidad de los Andes. It seeks to inform decision-making in the response to infectious disease epidemics in Latin America and the Caribbean. TRACE-LAC is linked with the TRACE and Epiverse initiatives led by the London School of Hygiene and Tropical Medicine in collaboration with the Medical Research Council Unit in The Gambia."
     )
}

generar_card_keynote <- function(tab, col_info = "info_es"){
  bslib::card(
    full_screen = FALSE,
    bslib::card_header(tab$name, class = "card-header-keynote"),
    bslib::card_image(
      file = here::here(tab$img),
      href = tab$href,
      border_radius = "all"
    ),
    bslib::card_body(shiny::markdown(tab[[col_info]]), ),
  )
}


generar_cards_keynotes <-
  function(info_keynotes,
           col_information = "info_es",
           width_col = 0.5) {
    bslib::layout_column_wrap(
      class = "cards-display",
      width = width_col,
      gap = "0.5cm",
      height = 300,
      generar_card_keynote(info_keynotes[1,], col_info = col_information),
      generar_card_keynote(info_keynotes[2,],  col_info = col_information)#,
      # generar_card_keynote(info_keynotes[3,],  col_info = col_information),
      # generar_card_keynote(info_keynotes[4,],  col_info = col_information)
    )
  }
