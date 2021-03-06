library(tidyverse)
library(httr)
library(rvest)

u_tjsp <- "https://esaj.tjsp.jus.br/cjsg/resultadoCompleta.do"

b_tjsp <- list(
  dados.buscaInteiroTeor = "coronavirus",
  dados.origensSelecionadas = "T"
)

# Dica: abjutils::chrome_to_body()

r_tjsp <- POST(u_tjsp, body = b_tjsp)

# muitas vezes precisa disso aqui
r_tjsp <- POST(u_tjsp, body = b_tjsp, encode = "form")

u_tjsp_pag <- "https://esaj.tjsp.jus.br/cjsg/trocaDePagina.do"
q_tjsp_pag <- list(tipoDeDecisao = "A", pagina = 1, conversationId = "")
r_tjsp_pag <- GET(u_tjsp_pag, query = q_tjsp_pag)

scrapr::html_view(r_tjsp_pag)

tab_html <- r_tjsp_pag %>%
  read_html(encoding = "UTF-8") %>%
  ## alternativa
  # xml_find_all("//table//tr")
  xml_find_all("//tr[@class='fundocinza1']//table")

tab_html[[1]] %>%
  html_table(fill = TRUE) %>%
  as_tibble() %>%
  mutate(X1 = str_squish(X1))

# o poder do str_squish()
tab_html[[1]] %>%
  html_table(fill = TRUE) %>%
  as_tibble() %>%
  mutate(X1 = str_squish(X1)) %>%
  with(X1[2]) %>%
  cat()


