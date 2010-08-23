class FixUserDefaultRole < ActiveRecord::Migration
  def self.up
    change_column :users, :role, :string, :default => 'participant'
  end

  def self.down
    change_column :users, :role, :string, :default => nil
  end
end
