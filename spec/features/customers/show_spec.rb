require 'rails_helper'

RSpec.describe 'Customer Show Page', type: :feature do
  before :each do
    test_data
  end

  describe 'As a visitor, when I visit the customer show page' do
    it 'I see the customers name ane a list of its items' do
      visit "/customers/#{@customer_1.id}"

      expect(page).to have_content(@customer_1.name)
      expect(page).to have_content(@item_1.name)
      expect(page).to have_content(@item_2.name)
      expect(page).to have_content(@item_1.price)
      expect(page).to have_content(@item_2.price)
      expect(page).to have_content(@item_1.supermarket.name)
    end
  end
end