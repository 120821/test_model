require "test_helper"

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create contract" do
    puts "this is block"
    a = create :contract, chain_id: 33
    #assert a.chain_id == 34
    assert_equal a.chain_id, 34
  end

  def test_create
    puts "this is method"
    puts create(:contract).content
  end
end
