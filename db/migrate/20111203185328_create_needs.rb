class CreateNeeds < ActiveRecord::Migration
  def self.up
    create_table :needs do |t|
      t.string :description
      t.string :title
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :needs
  end
end
