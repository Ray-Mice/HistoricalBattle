# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :battle do
    name "Battle of Example" 
    date "12-05-1500"
    location "Example Location" 
    belligerentA "A"
    belligerentB "B"
    strengthA "100"
    strengthB "150" 
    casualtiesA "10"
    casualtiesB "15" 
    result "A win"
  end
end
