class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :company_name
      t.string :company_description
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :contact_address
      t.string :contact_city
      t.string :contact_state
      t.integer :contact_zip
      t.string :contact_country
      t.boolean :request_for_proposal
      t.boolean :branding
      t.boolean :content_development
      t.boolean :logos_identity
      t.boolean :print_ad_campaign
      t.boolean :direct_mail_campaign
      t.string :project_budget
      t.string :project_timeline

      t.timestamps
    end
  end
end
