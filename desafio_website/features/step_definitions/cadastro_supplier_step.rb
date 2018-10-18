Dado("que estou logado no site phptravels") do
  #carregando pagina phptravels
  @logar_no_site=HomeLogin.new
  @logar_no_site.load
  
end

Quando("preencher o formulário de resgistro com dados de um novo supplier") do
  #Efetuando login no site
  @logar_no_site.login
  
  #Acessando pagina de cadastro do novo supplier
  @cadastro_novo_supplier=PageAddNewSupplier.new
  @cadastro_novo_supplier.pagina_cadastrar

  #Preenchendo formulario de cadastro do novo supplier
  @formulario_novo_supplier=FormNewSupplier.new
  @novo_supplier = FactoryStruct.new 

  #recebe os dados de um novo supplier da fabrica no objeto '@supplier
  @dados_fabrica = @novo_supplier.add_supplier_factory
  #adiciona o objeto 'supplier' no metodo "preencher_formulario"
  @formulario_novo_supplier.preencher_formulario(@dados_fabrica)
  
  @buscar=SuppliersManagement.new
  @buscar.buscar_suppliers(@dados_fabrica)
  
end

Entao("validar que o novo supplier foi adicionado a lista e a mensagem CHANGES SAVED!") do
  expect(@buscar.txt_change_saved.text).to eql('CHANGES SAVED!')
  expect(@buscar).to have_content @dados_fabrica.name
  expect(@buscar).to have_content @dados_fabrica.sobrenome
  expect(@buscar).to have_content @dados_fabrica.email

end