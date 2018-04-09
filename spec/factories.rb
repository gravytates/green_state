FactoryGirl.define do
  factory :oregon_user, class: 'User' do
    sequence(:name) { |n| "Fred#{n}"}
    admin false
    state "Oregon"
    sequence(:email) { |n| "Operson_#{n}@example.com" }
    password 123456
  end

  factory :washington_user, class: 'User' do
    sequence(:name) { |n| "Will#{n}"}
    admin false
    state "Washington"
    sequence(:email) { |n| "Wperson_#{n}@example.com" }
    password 123456
  end

  factory :idaho_user, class: 'User' do
    sequence(:name) { |n| "Ian#{n}"}
    admin false
    state "Idaho"
    sequence(:email) { |n| "Iperson_#{n}@example.com" }
    password 123456
  end


  factory :admin_user, class: 'User' do
    sequence(:name) { |n| "Grady#{n}"}
    admin true
    state "Oregon"
    sequence(:email) { |n| "person_#{n}@example.com" }
    password 123456
  end

  factory :co2_estimate do
    association :user, :factory => :admin_user, strategy: :build
    sequence(:monthly_emittance) {|n| n * (Faker::Number.between(70, 500)) }
    nat_gas 30
    fuel_oil 0
    sequence(:electricity) { |n| n*100 }
    mode 'sedan'
    sequence(:miles) { |n| n+100 }
    sequence(:lamb) { |n| n }
    sequence(:beef) { |n| n+1 }
    cheese 2
    pork 2
    turkey 2
    sequence(:chicken) { |n| n+2 }
    tuna 3
    eggs 4
    potatoes 5
    rice 2
    nuts 1
    beans 1
    vegetables 3
    milk 0
    fruit 2
    lentils 0
    plastic_re 'yes'
    alum_re 'yes'
    glass_re 'yes'
    paper_re 'yes'
  end
end
