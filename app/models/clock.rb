class Clock < ActiveRecord::Base
  belongs_to :task
end

# == Schema Information
#
# Table name: clocks
#
#  id         :integer         not null, primary key
#  task_id    :integer
#  clock_in   :datetime
#  clock_out  :datetime
#  created_at :datetime
#  updated_at :datetime
#

