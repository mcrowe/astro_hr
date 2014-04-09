class CompaniesController < ApplicationController

  def show
    if params[:id].blank?
      redirect_to current_manager.company
      return
    end

    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.last
  end

  def update
    @company = Company.last

    if @company.update(company_params)
      redirect_to @company, notice: 'Company was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

    def company_params
      params.require(:company).permit(:name)
    end

end
