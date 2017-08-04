Dado(/^que esteja na home do site$/) do
   visit 'http://demoqa.com/'
end

Quando(/^eu acessar a opção Registration$/) do
   page.find(:id, "menu-item-374").click
end

Quando(/^informar todos os dados$/) do
   fill_in 'first_name', :with => "Dayanec"
   fill_in 'last_name', :with => "Carvalho"
   find("input[value='single']").click
   find("input[value='dance']").click
   find("input[value='reading']").click
   find(:xpath, '//*[@id="dropdown_7"]').select 'Brazil'
   find(:xpath, '//*[@id="mm_date_8"]').select '2'
   find(:xpath, '//*[@id="dd_date_8"]').select '20'
   find(:xpath, '//*[@id="yy_date_8"]').select '1993'
   fill_in 'phone_9', :with => "11983435032"
   fill_in 'username', :with => "dayane"
   fill_in 'e_mail', :with => "dayane@gmail.com"
   #find("input[id='profile_pic_10']").click
   fill_in 'description', :with => "Teste"
   fill_in 'password', :with => "123teste"
   find(:xpath, '//*[@id="confirm_password_password_2"]').set "123teste"
 end

Entao(/^envio o cadastro com sucesso$/) do
 	find(:xpath, '//*[@id="pie_register"]').click
 	#assert_text 'Thank you for your registration'
 	#binding.pry
end
