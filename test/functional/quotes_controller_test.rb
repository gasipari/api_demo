require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, quote: { branding: @quote.branding, company_description: @quote.company_description, company_name: @quote.company_name, contact_address: @quote.contact_address, contact_city: @quote.contact_city, contact_country: @quote.contact_country, contact_email: @quote.contact_email, contact_name: @quote.contact_name, contact_phone: @quote.contact_phone, contact_state: @quote.contact_state, contact_zip: @quote.contact_zip, content_development: @quote.content_development, direct_mail_campaign: @quote.direct_mail_campaign, logos_identity: @quote.logos_identity, print_ad_campaign: @quote.print_ad_campaign, project_budget: @quote.project_budget, project_timeline: @quote.project_timeline, request_for_proposal: @quote.request_for_proposal }
    end

    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should show quote" do
    get :show, id: @quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote
    assert_response :success
  end

  test "should update quote" do
    put :update, id: @quote, quote: { branding: @quote.branding, company_description: @quote.company_description, company_name: @quote.company_name, contact_address: @quote.contact_address, contact_city: @quote.contact_city, contact_country: @quote.contact_country, contact_email: @quote.contact_email, contact_name: @quote.contact_name, contact_phone: @quote.contact_phone, contact_state: @quote.contact_state, contact_zip: @quote.contact_zip, content_development: @quote.content_development, direct_mail_campaign: @quote.direct_mail_campaign, logos_identity: @quote.logos_identity, print_ad_campaign: @quote.print_ad_campaign, project_budget: @quote.project_budget, project_timeline: @quote.project_timeline, request_for_proposal: @quote.request_for_proposal }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end
