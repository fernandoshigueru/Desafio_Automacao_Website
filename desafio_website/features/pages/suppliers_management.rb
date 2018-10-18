class SuppliersManagement < SitePrism::Page

    element :caixa_lista_supplier, :xpath, '//a[contains(text(),"Search")]'
    element :busca_email, 'input[name="phrase"]'
    element :button_go, :xpath, '//*[@data-search="1"]'
    #elemento com a mensagem usada para validacao (Changes Saved!)
	element :txt_change_saved, :xpath, '//h4[text()="Changes Saved!"]'
        
    def buscar_suppliers(supplier)
        wait_for_txt_change_saved
        caixa_lista_supplier.click
        busca_email.set (supplier.email)
        button_go.click        
    end

end