require 'faker'

class FactoryStruct < SitePrism::Page
    
    def add_supplier_factory
        @dados_formulario = OpenStruct.new
        @dados_formulario.fname = Faker::DragonBall.character
        @dados_formulario.lname = Faker::Name.last_name
        @dados_formulario.email = Faker::Internet.email
        @dados_formulario.password = Faker::Lorem.characters(8)
        Faker::Config.locale = 'pt-BR'
        @dados_formulario.contact = Faker::PhoneNumber.cell_phone
        @dados_formulario.address1 = Faker::Address.street_address
        @dados_formulario.address2 = Faker::Address.full_address
        @dados_formulario.name_for = Faker::Simpsons.character

        @dados_formulario #<--- retorna o elemento
         
        end
    
    end