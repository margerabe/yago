require 'rails_helper'

describe CompaniesController, type: :controller do
  describe '#create' do
    context 'with given params' do
      let(:params) do
        {
          company:
            {
              annual_revenue: rand(0..1000),
              enterprise_number: '0' + Faker::Number.number(digits: 9).to_s,
              legal_name: Faker::Company.name,
              natural_person: true,
              nacebel_codes: Constants::Nacebel::CODES.sample(3)
            },
          lead:
            {
              email: Faker::Internet.email,
              phone_number: Faker::PhoneNumber.cell_phone_in_e164,
              address: Faker::Address.full_address,
              first_name: Faker::Name.first_name,
              last_name: Faker::Name.last_name
            }
        }
      end

      before do
        post :create, params: params
      end

      it 'creates the lead' do
        lead = Lead.last

        expect(Lead.count).to eq(1)
        expect(lead.email).to eq(params[:lead][:email])
        expect(lead.first_name).to eq(params[:lead][:first_name])
        expect(lead.last_name).to eq(params[:lead][:last_name])
      end

      it 'creates the company' do
        company = Company.last

        expect(Company.count).to eq(1)
        expect(company.annual_revenue).to eq(params[:company][:annual_revenue])
        expect(company.enterprise_number).to eq(params[:company][:enterprise_number])
        expect(company.legal_name).to eq(params[:company][:legal_name])
        expect(company.natural_person).to eq(params[:company][:natural_person])
      end
    end
  end
end
