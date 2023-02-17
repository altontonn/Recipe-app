require 'rails_helper'

RSpec.describe 'Routes', type: :request do
  subject do
    Recipe.new(
      name: 'Asian Takeout',
      preparation_time: '30 min',
      cooking_time: '30 min',
      description: 'As voted by readers! 42 Fast and easy Asian restaurant recipes that are truly restaurant quality!',
      public: true
    )
  end

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'preparation_time should be present' do
    subject.preparation_time = nil
    expect(subject).to_not be_valid
  end

  it 'cooking_time should be present' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end

  it 'description should be present' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end

  it 'public should be present' do
    subject.cooking_time = nil
    expect(subject).to_not be_valid
  end
end
