Dado(/^que eu esteja logado no sistema$/) do
  visit "http://opensource.demo.orangehrmlive.com"
  fill_in 'txtUsername', :with => "admin"
  fill_in 'txtPassword', :with => "admin"
  click_button('btnLogin')
end

Quando(/^eu acessar a tela 'Employee List'$/) do
  click_link('menu_pim_viewPimModule')
  find(:id, 'empsearch_employee_name_empName').click
  fill_in 'empsearch[employee_name][empName]',:with => "Jose Maria"
  click_button('Search') 
  click_link('Jose Maria')
  assert_text('Personal Details')
end

Entao(/^eu devo alterar os dados do funcionario com sucesso$/) do
  click_button('Edit')
  fill_in 'personal[txtLicenNo]', :with => "JM123"
  find(:xpath, '//*[@id="personal_txtLicExpDate"]').set "2017-08-01"
  find(:id, 'personal_optGender_1').click
  binding.pry
  select('Single', :from => 'personal[cmbMarital]') 
  select('Brazilian', :from => 'personal[cmbNation]') 
  find(:xpath, '//*[@id="personal_txtLicExpDate"]').set "1993-02-20"
  click_button('btnSave')
  assert_text('Successfully Saved')
  #teste
end