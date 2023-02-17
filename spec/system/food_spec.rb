require 'rails_helper'

RSpec.describe 'Recipe', type: :system do
  user = User.create(name: 'Newton', email: 'altontonn@gmail.com', password: '123456')

  subject do
    Food.new(user_id: user.id, name: 'beef', measurement_unit: 'kg', price: 900, quantity: 2)
  end
  before { subject.save }

  describe 'index page' do
    it 'I can see the button.' do
      visit root_path
      page.has_button?('Add Food')
    end
    it 'I can see the food name.' do
      visit root_path
      page.has_content?('beef')
    end
    it 'I can see the food measurement unit.' do
      visit root_path
      page.has_content?('kg')
    end
    it 'I can see the food price.' do
      visit root_path
      page.has_content?('900')
    end
    it 'I can see the food quantity.' do
      visit root_path
      page.has_content?('2')
    end
  end
end
