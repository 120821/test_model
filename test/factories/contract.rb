FactoryBot.define do
  factory :contract do
    #chain_id { 123456 }
    content { "i am content" }
    #address { "0x960781B058da688735c98D5165aF8FF4e1B400E0" }
    #operator_address { "0x960781B058da688735c98D5165aF8FF4e1B400E00x960781B058da688735c98D5165aF8FF4e1B400E0" }
    #rpc_server { "user" }
    transient do
      upcased { false }
    end
  end

  after(:create) do |contract, evaluator|
    contract.content.upcase! if evaluator.upcased
  end
end

#create(:contract).content

#create(:contract, upcased: true).content
#create(:contract)

# with callbacks
#factory :user do
#  transient do
#    upcased { false }
#  end

#  name { "John Doe" }

#  after(:create) do |user, evaluator|
#    user.name.upcase! if evaluator.upcased
#  end
#end

#create(:user).name
##=> "John Doe"

#create(:user, upcased: true).name
##=> "JOHN DOE"
