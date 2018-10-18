require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'site_prism'
require 'yaml'
require 'ostruct'

World(PageObject::PageFactory)

#Configurando o Driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver como padrao
Capybara.default_driver = :selenium

#timeout padrao na execução
Capybara.default_max_wait_time = 40

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize

#Mapeamento de Yml
$dados = YAML.load_file('./features/dados/user_admin.yml')