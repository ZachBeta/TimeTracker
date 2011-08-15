class CreateClocks < ActiveRecord::Migration
  def self.up
    create_table :clocks do |t|
      t.integer :task_id
      t.datetime :clock_in
      t.datetime :clock_out

      t.timestamps
    end
  end

  def self.down
    drop_table :clocks
  end
end
