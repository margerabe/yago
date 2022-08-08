class FetchInsurance
  def initialize(company:)
    @company = company
  end

  def call
    response = HTTParty.post(
      'https://staging-gtw.seraphin.be/quotes/professional-liability',
      body: raw_params.to_json,
      headers: {
        'Content-type' => 'application/json',
        'X-Api-Key' => 'fABF1NGkfn5fpHuJHrbvG3niQX6A1CO53ftF9ASD'
      }
    )

    JSON.parse(response.body)
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
end
