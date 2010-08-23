class AddDefaultToUserRole < ActiveRecord::Migration
  def self.up
    change_column_default :users, :role, 'participant'
  end

  def self.down
  end
end
