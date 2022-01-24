class AddProjectToSitelinks < ActiveRecord::Migration[7.0]
  def change
    add_reference :sitelinks, :project, null: false, foreign_key: true
  end
end
  