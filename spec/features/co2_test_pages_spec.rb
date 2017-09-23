require 'rails_helper'

# 'bicycle', 'MAX', 'bus', 'truck (older than 2016)', 'small pickup', 'standard pickup', 'hybrid', 'sedan'

describe "taking a co3 emittance test" do
  it 'will take test with walking mode of transportation and record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'walk', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'Monthly Estimated Emittance: 33.5 lbs CO2 / month'
  end
  it 'will take test with biking mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'bicycle', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with MAX mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'MAX', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with MAX mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'MAX', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with bus mode of transportation and natural gas more than 10 dollars/mo: record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 10
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'bus', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with truck (older than 2016) mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'truck (older than 2016)', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with small pickup mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'small pickup', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with standard pickup mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'standard pickup', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with hybrid mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'hybrid', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

  it 'will take test with sedan mode of transportationand record result' do
    visit root_path
    click_link "Sign Up"
    fill_in "user_name", with: "christ"
    fill_in "user_email", with: "christ@god.com"
    fill_in "user_password", with: "123456"
    fill_in "user_password_confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
    click_on 'CO2 Estimator'
    click_link 'Quiz'
    expect(page).to have_content "New CO2 Quiz"
    fill_in "On average, how much do you pay per month for natural gas?", with: 0
    fill_in "On average, how much do you pay per month for fuel oil?", with: 0
    fill_in "On average, how much do you pay per month for electricity?", with: 0
    select 'sedan', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'yes', :from => "aluminum?"
    select 'yes', :from => "plastic?"
    select 'yes', :from => "glass?"
    select 'yes', :from => "paper?"
    fill_in "lamb?", with: 0
    fill_in "beef?", with: 0
    fill_in "cheese?", with: 0
    fill_in "pork?", with: 0
    fill_in "turkey?", with: 0
    fill_in "chicken?", with: 0
    fill_in "tuna?", with: 0
    fill_in "eggs?", with: 0
    fill_in "potatoes?", with: 0
    fill_in "rice?", with: 0
    fill_in "nuts?", with: 0
    fill_in "beans/tofu?", with: 0
    fill_in "vegetables?", with: 0
    fill_in "milk?", with: 0
    fill_in "fruit?", with: 0
    fill_in "lentils?", with: 0
    click_button 'Create Co2 estimate'
    expect(page).to have_content 'User Profile'
  end

end
