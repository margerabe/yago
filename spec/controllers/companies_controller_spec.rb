require 'rails_helper'

describe CompaniesController, type: :controller do
  include_context 'with insurance api mocked requests'

  describe '#create' do
    context 'with given params' do
      let(:params) do
        {
          annual_revenue: rand(0..1000),
          enterprise_number: '0' + Faker::Number.number(digits: 9).to_s,
          legal_name: Faker::Company.name,
          natural_person: true,
          nacebel_codes: Constants::Nacebel::CODES.sample(3),
          email: Faker::Internet.email,
          phone_number: Faker::PhoneNumber.cell_phone_in_e164,
          address: Faker::Address.full_address,
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name
        }
      end

      before do
        fetch_insurance_succeed

        post :create, params: params
      end

      it 'creates the lead' do
        lead = Lead.last

        expect(Lead.count).to eq(1)
        expect(lead.email).to eq(params[:email])
        expect(lead.first_name).to eq(params[:first_name])
        expect(lead.last_name).to eq(params[:last_name])
      end

      it 'creates the company' do
        company = Company.last

        expect(Company.count).to eq(1)
        expect(company.annual_revenue).to eq(params[:annual_revenue])
        expect(company.enterprise_number).to eq(params[:enterprise_number])
        expect(company.legal_name).to eq(params[:legal_name])
        expect(company.natural_person).to eq(params[:natural_person])
      end
    end
  end
end
