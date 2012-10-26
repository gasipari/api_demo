class CountriesController < ApplicationController
  
  respond_to :html, :json
    
  # GET /countries
  def index
    @countries = Country.all
    respond_with @countries
  end

  # GET /countries/1
  def show
    @country = Country.find(params[:id])
     respond_with @country
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
    @country = Country.find(params[:id])
  end

  # POST /countries
  def create
    @country = Country.new(params[:country])
    @country.save
    respond_with @country
  end

  # PUT /countries/1
  def update
    @country = Country.find(params[:id])
    @country.update_attributes(params[:country])
    respond_with @country
  end

  # DELETE /countries/1
  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    respond_with @country
  end
end
