class CreateClockIns < ActiveRecord::Migration
  def self.up
    create_table :clock_ins do |t|
      t.datetime :in_time
      t.integer :task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :clock_ins
  end
end
