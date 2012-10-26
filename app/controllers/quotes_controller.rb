class QuotesController < ApplicationController
  
  respond_to :html, :json
  
  # GET /quotes
  def index
    @quotes = Quote.all
    respond_with @quotes
  end

  # GET /quotes/1
  def show
    @quote = Quote.find(params[:id])
    respond_with @quote
  end

  # POST /quotes
  def create
    @quote = Quote.new(params[:quote])
    @quote.save
    respond_with @quote
    
  end

  # PUT /quotes/1
  def update
    @quote = Quote.find(params[:id])
    @quote.update_attributes(params[:quote])
    respond_with @quote
  end

  # DELETE /quotes/1
  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    respond_with @quote
  end

  # not applicable for the api
  
  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
    @quote = Quote.find(params[:id])
  end
end
