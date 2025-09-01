generar_info_keynotes <- function() {
  tibble::tibble(
    name = "Heather Turner",
    href = "https://warwick.ac.uk/go/heatherturner",
    img = "img/posts/heatherT.jpg",
    info_es = "",
    info_pt = "",
    info_en = ""
  ) #|> 
    # tibble::add_row(
    #   name = "Will Landau",
    #   href = "https://wlandau.github.io/",
    #   img = "img/posts/will.jpg",
    #   info_es = "Will Landau es estadístico y desarrollador
    #   de software para la industria de las ciencias de la vida.
    #   Se especializa en los aspectos computacionales de la estadística
    #   bayesiana y en investigación reproducible. Es el creador
    #   y mantenedor de los paquetes de R targets y crew.",
    #   info_pt = "Will Landau é um estatístico e desenvolvedor de software na indústria.
    #   Ele é especializado nos aspectos computacionais da estatística bayesiana
    #   e na pesquisa reprodutível,
    #   além de ser o criador e mantenedor dos pacotes de R targets e crew.",
    #   info_en = "Will Landau is a statistician and software developer in the
    #   life sciences industry. 
    #   He is specialized in the computational aspects of Bayesian statistics
    #   and reproducible research,
    #   and he is the creator and maintainer of the targets and crew R packages."
    # )

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
      generar_card_keynote(info_keynotes[1,], col_info = col_information)#,
      #generar_card_keynote(info_keynotes[2,],  col_info = col_information)#,
      # generar_card_keynote(info_keynotes[3,],  col_info = col_information),
      # generar_card_keynote(info_keynotes[4,],  col_info = col_information)
    )
  }
