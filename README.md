
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Configuração inicial

#### Passo 1: Instalar pacotes

``` r
install.packages("remotes")

# instalar pacote da Curso-R
remotes::install_github("curso-r/CursoR")
```

#### Passo 2: Criar um projeto do RStudio

Faça um projeto do RStudio para usar durante todo o curso e em seguida
abra-o.

``` r
install.packages("usethis")
usethis::create_project("caminho_ate_o_projeto/nome_do_projeto")
```

#### Passo 3: Baixar o material

Certifique que você está dentro do projeto criado no passo 2 e rode o
código abaixo.

**Observação**: Assim que rodar o código abaixo, o programa vai pedir
uma escolha de opções. Escolha o número correspondente ao curso de R
para Ciência de Dados 1!

``` r
# Baixar ou atualizar material do curso
CursoR::atualizar_material()
```

## Slides

| Slide                              | Link                                                                                                                                                                                    | Link em PDF                                                                                       |
|:-----------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------|
| slides/01-introducao-ao-curso.html | <a href="https://curso-r.github.io/main-web-scraping/slides/01-introducao-ao-curso.html" class="uri">https://curso-r.github.io/main-web-scraping/slides/01-introducao-ao-curso.html</a> | <a href='https://curso-r.github.io/main-web-scraping/slides/01-introducao-ao-curso.pdf'> PDF </a> |
| slides/02-introducao-ao-ws.html    | <a href="https://curso-r.github.io/main-web-scraping/slides/02-introducao-ao-ws.html" class="uri">https://curso-r.github.io/main-web-scraping/slides/02-introducao-ao-ws.html</a>       | <a href='https://curso-r.github.io/main-web-scraping/slides/02-introducao-ao-ws.pdf'> PDF </a>    |
| slides/03-navegador.html           | <a href="https://curso-r.github.io/main-web-scraping/slides/03-navegador.html" class="uri">https://curso-r.github.io/main-web-scraping/slides/03-navegador.html</a>                     | <a href='https://curso-r.github.io/main-web-scraping/slides/03-navegador.pdf'> PDF </a>           |

## Scripts usados em aula

| script       | link                                                                                                                                                                              |
|:-------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 01-pokemon.R | <a href="https://curso-r.github.io/202011-web-scraping/exemplos_de_aula/01-pokemon.R" class="uri">https://curso-r.github.io/202011-web-scraping/exemplos_de_aula/01-pokemon.R</a> |
| 02-sabesp.R  | <a href="https://curso-r.github.io/202011-web-scraping/exemplos_de_aula/02-sabesp.R" class="uri">https://curso-r.github.io/202011-web-scraping/exemplos_de_aula/02-sabesp.R</a>   |