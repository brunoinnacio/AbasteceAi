
class PesquisaPage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php'

  element :campo_pesquisa, '#search_query_top'
  element :bnt_lupa, '[class="btn btn-default button-search"]'
  element :imagem, 'img[src*="http://automationpractice.com/img/p/1/1-home_default.jpg"]'

  def pesquisar
    campo_pesquisa.set 'Faded Short Sleeve'
    bnt_lupa.click
    imagem.click
  end

end