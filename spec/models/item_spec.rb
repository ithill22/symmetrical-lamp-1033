require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it { should belong_to :supermarket }
    it { should have_many :customer_items }
    it { should have_many(:customers).through(:customer_items) }
  end

  describe 'instance methods' do
    it '#supermarket_name' do
      test_data
      expect(@item_1.supermarket_name).to eq(@supermarket_1.name)
    end

    it '#customer_count' do
      test_data
      expect(@item_1.customer_count).to eq(2)
    end
  end
end
