class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
    @lead = @company.lead
  end

  def create
    @lead = Lead.create!(lead_params)
    @company = Company.new(company_params)
    @company.lead_id = @lead.id

    if @company.save
      @service_result = FetchInsurance.new(company: @company).call
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  private

  def lead_params
    params.permit(:first_name, :last_name, :email, :phone_number, :address)
  end

  def company_params
    params.permit(:annual_revenue, :enterprise_number, :legal_name, :natural_person,
                  :deductible_formula, :coverage_ceiling_formula, :nacebel_codes, nacebel_codes: [])
  end
end
