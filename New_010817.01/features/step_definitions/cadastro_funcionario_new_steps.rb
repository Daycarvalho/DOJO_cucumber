Dado(/^que eu esteja logado no sistema$/) do
  visit "http://opensource.demo.orangehrmlive.com"
  fill_in 'txtUsername', :with => "admin"
  fill_in 'txtPassword', :with => "admin"
  click_button('btnLogin')
end

Quando(/^eu acessar a tela 'Add Employee'$/) do
   click_link('menu_pim_viewPimModule')
   click_link('menu_pim_addEmployee')
   fill_in 'firstName', :with => "Jose"
   fill_in 'middleName', :with => "Maria"
   fill_in 'lastName', :with => "Silva"
   check('chkLogin')
   fill_in 'user_name', :with => "JoseMaria"
   fill_in 'user_password', :with => "123teste"
   fill_in 're_password', :with => "123teste"
   select('Disabled', :from => 'status')   
   click_button('btnSave')
end

Entao(/^eu devo cadastrar um funcionario com sucesso$/) do
  assert_text('Personal Details')
end