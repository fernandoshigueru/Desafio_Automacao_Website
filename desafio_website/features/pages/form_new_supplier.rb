class FormNewSupplier < SitePrism::Page

	#elementos do formulário para adicionar um novo supplier
	element :first_name, 'input[name="fname"]'
	element :last_name, 'input[name="lname"]'
	element :email, 'input[name="email"]'
	element :password, 'input[name="password"]'
	element :contact, 'input[name="mobile"]'
	element :country, 'select[name="country"]'
	element :address1, 'input[name="address1"]'
	element :address2, 'input[name="address2"]'
	element :select_status, 'select[name="status"]'
	element :selecet_supplier, 'select[name="applyfor"]'
	element :name, 'input[name="itemname"]'
	element :checkbox_news_sub, :xpath, '//strong[text()="Email Newsletter Subscriber"]'
	element :select_assign_hotels, 'select[name="hotels[]"]'
	element :select_assign_tours, 'select[name="tours[]"]'
	element :select_assign_cars, 'select[name="cars[]"]'
	element :checkbox_add, :xpath, '//label[text()=" Hotels                  "]'
	element :checkbox_edit, :xpath, '//div[contains(text(), "Edit")]/following::label[5]'
	element :checkbox_remove, :xpath, '//div[contains(text(), "Remove")]/following::label[4]'
	element :button_submit, 'button[class="btn btn-primary"]'

	#metodo para adicionar novo supplier
	def preencher_formulario(supplier)
		first_name.set (supplier.fname)
		last_name.set (supplier.lname)
		email.set (supplier.email)
		password.set (supplier.password)
		contact.set (supplier.contact)
		country.select ('Japan')
		address1.set (supplier.address1)
		address2.set (supplier.address2)
		select_status.select ('Enabled')
		selecet_supplier.select ('Cars')
		name.set (supplier.name_for)
		checkbox_news_sub.click
		select_assign_hotels.select ('Swissotel Le Plaza Basel')
		select_assign_tours.select ('Hong Kong Island Tour')
		select_assign_cars.select ('Hyundai i10 or similar')
		checkbox_add.click
		#binding.pry
		checkbox_edit.click
		checkbox_remove.click
		button_submit.click
	end
end