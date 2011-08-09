require 'test_helper'

class ClockInTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

