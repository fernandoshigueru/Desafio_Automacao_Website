 class HomeLogin < SitePrism::Page

#set_url define uma url padrão de acesso.
set_url "https://www.phptravels.net/admin"

#declarando os elementos da pagina de login
element :email_field, 'input[name="email"]'
element :password_field, 'input[name="password"]'
element :button_login, 'button[type="submit"]'

#metodo para efetuar login
	def login
		wait_for_button_login
		email_field.set $dados['user_adm']['email'] #<--- buscando massa de dados no arquivo user_admin.yml
		password_field.set $dados['user_adm']['password'] #<--- buscando massa de dados no arquivo user_admin.yml
		button_login.click
	end

end