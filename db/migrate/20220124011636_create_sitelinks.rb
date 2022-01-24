class CreateSitelinks < ActiveRecord::Migration[7.0]
  def change
    create_table :sitelinks do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
