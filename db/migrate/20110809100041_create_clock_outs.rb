class CreateClockOuts < ActiveRecord::Migration
  def self.up
    create_table :clock_outs do |t|
      t.datetime :out_time
      t.integer :clock_in_id

      t.timestamps
    end
  end

  def self.down
    drop_table :clock_outs
  end
end
