class ClockOut < ActiveRecord::Base
  belongs_to :clock_in
end

# == Schema Information
#
# Table name: clock_outs
#
#  id          :integer         not null, primary key
#  out_time    :datetime
#  clock_in_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

