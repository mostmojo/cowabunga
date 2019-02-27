class SurfCompaniesController < ApplicationController
  before_action :set_surf_company, only: [:show]

  def index
    @surf_companies = SurfCompany.where.not(latitude: nil, longitude: nil)

    @markers = @surf_companies.map do |surf_company|
      {
        lng: surf_company.longitude,
        lat: surf_company.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { surf_company: surf_company })
      }
    end
  end

  def show
  end

  private
  def set_surf_company
    @surf_company = SurfCompany.find(params[:id])
  end
end
