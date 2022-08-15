# frozen_string_literal: true

class FetchInsurance
  def initialize(company:)
    @company = company
  end

  def call
    fetch_insurance(raw_params)

    parsed_response = JSON.parse(@response.body)

    if parsed_response['success']
      quote = @company.quotes.create!(parsed_response['data'].transform_keys { |key| key.to_s.underscore })

      { status: :success, quote: quote }
    else
      { status: :error, errors: @response['data']['message'] }
    end
  end

  private

  def raw_params
    {
      "annualRevenue": @company.annual_revenue,
      "enterpriseNumber": @company.enterprise_number,
      "legalName": @company.legal_name,
      "naturalPerson": @company.natural_person,
      "nacebelCodes": @company.nacebel_codes
    }
  end

  def fetch_insurance(raw_params)
    @response = HTTParty.post(
      'https://staging-gtw.seraphin.be/quotes/professional-liability',
      body: raw_params.to_json,
      headers: {
        'Content-type' => 'application/json',
        'X-Api-Key' => ENV['API_KEY']
      }
    )
  end
end
