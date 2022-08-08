require 'rails_helper'

RSpec.describe Company, type: :model do
  subject(:company) { build(:company) }

  describe 'validations' do
    it 'is valid with valid attributes' do 
      expect(company).to be_valid
    end
  end
end