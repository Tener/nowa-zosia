class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :name
      t.string :image
      t.string :url
      t.boolean :visible
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :sponsors
  end
end
