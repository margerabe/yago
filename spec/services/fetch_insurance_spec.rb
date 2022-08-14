require 'rails_helper'

describe FetchInsurance do
  include_context 'with insurance api mocked requests'

  describe '.call' do
    let(:lead)      { create(:lead) }
    let(:company)   { create(:company, lead: lead) }

    context 'with correct params' do
      let(:fetch_insurance) { described_class.new(company: company).call }

      before do
        fetch_insurance_succeed
        fetch_insurance
      end

      it 'correctly creates a quote' do
        quote = Quote.last
        expect(quote.company_id).to eq(company.id)
      end
    end

    context 'with incorrect params' do
      let(:fetch_insurance) { described_class.new(company: company).call }

      before do
        fetch_insurance_failure
      end

      it 'returns an error status' do
        expect(fetch_insurance[:status]).to eq(:error)
      end

      it 'correctly creates a quote' do
        expect(Quote.count).to eq(0)
      end
    end
  end
end
