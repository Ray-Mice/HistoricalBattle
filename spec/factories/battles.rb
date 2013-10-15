# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :battle do
    name "Battle of Example" 
    date "12-05-1500"
    location "Example Location" 
    belligerent "A & B"
    strength "A1 & B2" 
    casualties "1 & 2" 
    result "A win"
  end
end
