require 'rails_helper'

describe FetchInsurance do
  describe '.call' do
    let(:lead) { create(:lead) }
    let(:company) { create(:company, lead: lead) }

    context 'with correct params' do
      let(:fetch_insurance) { described_class.new(company: company).call }

      it 'returns the quote' do
        expect(fetch_insurance).not_to be nil
      end
    end
  end
end
