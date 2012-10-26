class Quote < ActiveRecord::Base
  attr_accessible :branding, :company_description, :company_name, :contact_address, :contact_city, :contact_country, :contact_email, :contact_name, :contact_phone, :contact_state, :contact_zip, :content_development, :direct_mail_campaign, :logos_identity, :print_ad_campaign, :project_budget, :project_timeline, :request_for_proposal
end
