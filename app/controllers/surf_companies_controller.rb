class SurfCompaniesController < ApplicationController
  before_action :set_surf_company, only: [:show]

  def index
    @surf_companies = SurfCompany.all
  end

  def show
  end

  private
  def set_surf_company
    @surf_company = SurfCompany.find(params[:id])
  end
end
