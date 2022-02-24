FactoryBot.define do
  factory :opening_hour do
    day { :monday }
    opening { '10:00' }
    closing { '18:00' }
  end
end
