require 'test_helper'

class ClockTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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
#  notes      :text
#

