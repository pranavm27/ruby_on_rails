FactoryGirl.define do
    factory :user do 
        sequence(:name) { |n| 'Mr. #{n}'}
        sequence(:nic_name)  { |n| 'nic #{n}' }
   end

   factory :users do
   		asdf 'asdf'
 	  	qwerty 'qwerty'
   end
end