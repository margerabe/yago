shared_context 'with insurance api mocked requests' do
  let(:fetch_insurance_response_succeed) do
    {
      "success": true,
      "message": 'success',
      "data": {
        "available": true,
        "coverageCeiling": 300_000,
        "deductible": 5000,
        "quoteId": 'seniorTechChallenge856085891',
        "grossPremiums": {
          "afterDelivery": 42,
          "publicLiability": 157.5,
          "professionalIndemnity": 189,
          "entrustedObjects": 52.5,
          "legalExpenses": 63
        }
      }
    }
  end

  let(:fetch_insurance_response_failure) do
    {
      "success": false,
      "message": 'quote not computed',
      "data": {
        "available": false,
        "message": 'instance.nacebelCodes[1]: does not meet maximum length of 5'
      }
    }
  end

  let(:fetch_insurance_uri) { Addressable::Template.new('https://staging-gtw.seraphin.be/quotes/professional-liability') }

  let(:fetch_insurance_succeed) do
    stub_request(:post, fetch_insurance_uri).to_return(
      status: 200,
      body: fetch_insurance_response_succeed.to_json
    )
  end
  let(:fetch_insurance_failure) do
    stub_request(:post, fetch_insurance_uri).to_return(
      status: 200,
      body: fetch_insurance_response_failure.to_json
    )
  end
end
