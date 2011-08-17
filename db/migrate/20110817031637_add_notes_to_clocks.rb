class AddNotesToClocks < ActiveRecord::Migration
  def self.up
    add_column :clocks, :notes, :text
  end

  def self.down
    remove_column :clocks, :notes
  end
end
