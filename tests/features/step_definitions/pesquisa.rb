Dado('que estou na paginal inicial') do
    @home = PesquisaPage.new
    @home.load
  end
  
    Quando('realizar uma pesquisa e selecionar o produto') do
    @home.pesquisar
  end
  
  Então('devo visualizar o detalhe do produto') do
    expect(page).to have_content('Model demo_1')
    expect(page).to have_content('DATA SHEET')
  end
  