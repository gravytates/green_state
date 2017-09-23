require 'rails_helper'

describe "taking a co3 emittance test" do
  it 'will take test and record result' do
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
    select '...', :from => "What is your primary mode of transportation?"
    fill_in "On average, how many miles do you travel per week?", with: 0
    select 'no', :from => "aluminum?"
    select 'no', :from => "plastic?"
    select 'no', :from => "glass?"
    select 'no', :from => "paper?"
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
    expect(page).to have_content 'Monthly Estimated Emittance: 57.67 lbs CO2 / month'

  end
end
