require 'rails_helper'

RSpec.describe "Items Index Page", type: :feature do
  before :each do
    test_data
  end

  describe "As a visitor, when I visit the items index page" do
    it 'i see a list of all items, their prices, their supermarkets and how many customer have bought the item' do
      visit "/items"

      expect(page).to have_content(@item_1.name)
      expect(page).to have_content(@item_1.price)
      expect(page).to have_content(@item_1.supermarket_name)
      expect(page).to have_content(@item_1.customer_count)

      expect(page).to have_content(@item_2.name)
      expect(page).to have_content(@item_2.price)
      expect(page).to have_content(@item_2.supermarket_name)
      expect(page).to have_content(@item_2.customer_count)
    end
  end
end