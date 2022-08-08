class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def show
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(company_params)
    @company.nacebel_codes = params['nacebel_codes']
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
