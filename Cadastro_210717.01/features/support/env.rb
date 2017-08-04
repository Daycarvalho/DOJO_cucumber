#sobe em memoria as Gems informadas
require 'rspec'
require 'capybara'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'pry'

#Confugurando o driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end	

#Setando a confuguração do driver como padrão
Capybara.default_driver = :selenium

#Timeout padrão na execução
Capybara.default_max_wait_time = 15

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize
