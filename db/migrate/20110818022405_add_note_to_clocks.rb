class AddNoteToClocks < ActiveRecord::Migration
  def self.up
    add_column :clocks, :note, :text
  end

  def self.down
    remove_column :clocks, :note
  end
end
