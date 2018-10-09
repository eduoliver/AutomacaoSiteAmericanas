#@Sucesso
Dado(/^que eu limpei os cookies$/) do
  page.reset!
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
  Capybara.reset_sessions!
  page.reset!
end

Dado(/^que eu acesse a pagina das lojas Americanas$/) do
  url = $application['url_test_americanas']
  visit url
end

Dado("faca login com o Facebook com o usuario {string} e senha {string}") do |user, pass|
  $main = page.driver.browser.window_handles.first
sleep 1
  fb_window = window_opened_by {find("div[class='facebookLogin']").click}
sleep 1
  within_window fb_window do
  find("input[id='email']").set(user)
  find("input[id='pass']").set(pass)
  find("input[id='u_0_0']").click
  # find("button[name='__CONFIRM__']").click
    page.driver.browser.switch_to.window($main)
  sleep 5
  end
end

Dado("buscar pelo produto Moto G6") do
  find("input[id='h_search-input']").set "Moto G6"
  find("button[id='h_search-btn']").click
  sleep 1
end

Dado("seleciono o Moto G6") do
  find("img[src='https://images-americanas.b2w.io/produtos/01/00/item/133453/1/133453185P1.jpg']").click
  find("a[id='btn-buy']").click
end

Dado("prossigo o fluxo de compra") do
  find("button[id='btn-continue']").click
  sleep 1
end

Dado("prossigo para identificacao") do
  find("button[id='buy-button']").click
end

Dado("preencha o numero do Cartao de Credito com {string}") do |numero|
    find("input[id='creditCard-cardNumber']").set(numero)
end

Dado("preencha o nome do Cartao Credito com {string}") do |nome|
  find("input[id='creditCard-nameOnCard']").set(nome)
end

Dado("preencha a validade com o mes {string}") do |mes|
  find("select[id='creditCard-ccMonth']").click
  select(mes)
end

Dado("preencha a validade com o ano {string}") do |ano|
  find("select[id='creditCard-ccYear']").click
  select(ano)
end

Dado("preencha o codigo de segurança com {string}") do |codigo|
  find("input[id='creditCard-creditCard-security']").set(codigo)
end

Dado("pago com {string} parcela") do |parcelas|
  find("input[id='creditCard-creditCard-installment']").set(parcelas)
end

Entao("finalizo a compra") do
  find("button[id='payment-credit-card']").click
  sleep 7
end

Dado("seleciono {string} unidades do produto") do |quantidade|
  find("select[class='form-control select__quantity']").click
  select(quantidade)
end

Dado("removo o item da cesta") do
  find("a[class='basket-productRemoveAct --desktop']").click
  sleep 3
end
