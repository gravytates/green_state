describe "taking a co3 emittance test" do
  it 'will take test with walking mode of transportation and record result' do
    user = FactoryGirl.create(:oregon_user)
    w_user = FactoryGirl.create(:washington_user)
    login_as(user, :scope => :oregon_user)
    logout(:oregon_user)
    login_as(w_user, :scope => :washington_user)
    visit root_path
    click_on 'Data'
    expect(page).to have_content 'Looking at the Data... How Green are these States?'
  end
end
