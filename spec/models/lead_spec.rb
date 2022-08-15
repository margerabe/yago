# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Lead, type: :model do
  subject(:lead) { build(:lead) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(lead).to be_valid
    end
  end
end
