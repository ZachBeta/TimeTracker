class ClockIn < ActiveRecord::Base
  belongs_to :task, :dependent => :destroy
  has_one :clock_out
end

# == Schema Information
#
# Table name: clock_ins
#
#  id         :integer         not null, primary key
#  in_time    :datetime
#  task_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

