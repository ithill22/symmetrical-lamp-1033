require 'rails_helper'

RSpec.describe 'Supermarket Show Page', type: :feature do
  before :each do
    test_data
  end

  describe 'As a visitor, when I visit the supermarket show page' do
    it 'I see a unique list of all customers who have bought items from that supermarket' do
      visit "/supermarkets/#{@supermarket_1.id}"

      expect(page).to have_content(@supermarket_1.name)
      expect(page).to have_content(@customer_1.name)
      expect(page).to have_content(@customer_2.name)

      visit "/supermarkets/#{@supermarket_2.id}"

      expect(page).to have_content(@supermarket_2.name)
      expect(page).to have_content(@customer_3.name)
      expect(page).to have_content(@customer_4.name)
    end
  end
end