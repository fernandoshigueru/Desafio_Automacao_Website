class PageAddNewSupplier < SitePrism::Page

#elementos da pagina 'home(admin)' para acesso a pagina de cadastro de novo supplier
	element :accounts, :xpath, '//a[@href="#ACCOUNTS"]'
	element :suppliers, :xpath, '//a[@href="https://www.phptravels.net/admin/accounts/suppliers/"]'
	element :button_add, 'button[type="submit"]'
	
	#metodo para acessar a tela de adicionar novo supplier
	#ACCOUNTS > SUPPLIERS > ADD(botao)
	def pagina_cadastrar
		wait_for_accounts
		accounts.click
		suppliers.click
		button_add.click
	end

end