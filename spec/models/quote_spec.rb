# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Quote, type: :model do
  subject(:quote) { build(:quote) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(quote).to be_valid
    end
  end
end
