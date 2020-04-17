
Dado(/^que estou no site dos correios$/) do
 visit 'http://www.correios.com.br/'
end
  
Quando(/^informo cep desejado$/) do
  find(:id, 'acesso-busca').send_keys '06608430'
end
  
Então(/^visualizo os endereços$/) do
    #has_content? ('DADOS ENCONTRADOS COM SUCESSO.') ou
    ruas = all('table tbody tr')
    maria = ruas.detect { |rua|rua.text.include?('Jardim Rosa Emília') }
end