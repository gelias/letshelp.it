class UpdateNeeds < ActiveRecord::Migration
  def self.up
    add_column :needs, :organization_id, :integer
  end

  def self.down
    remove_column :needs, :organization_id
  end
end
