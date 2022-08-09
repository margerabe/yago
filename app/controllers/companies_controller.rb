class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @lead = @company.lead
    @service_result = FetchInsurance.new(company: @company).call
  end

  def create
    @lead = Lead.create(
      email: params['email'],
      phone_number: params['phone_number'],
      address: params['address'],
      first_name: params['first_name'],
      last_name: params['last_name']
    )

    @company = Company.new(
      annual_revenue: params['annual_revenue'],
      enterprise_number: params['enterprise_number'],
      legal_name: params['legal_name'],
      natural_person: params['natural_person'],
      nacebel_codes: params['nacebel_codes'],
      lead_id: @lead.id
    )

    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private

  def company_params
    params.require(:company).permit(:annual_revenue, :enterprise_number, :legal_name, :natural_person,
                                    :deductible_formula, :coverage_ceiling_formula, :nacebel_codes, nacebel_codes: [])
  end
end
