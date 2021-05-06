class AddComorbiditiesToCampaigns < ActiveRecord::Migration[6.1]
  def change
    add_column :campaigns, :comorbidities_only, :boolean
  end
end
