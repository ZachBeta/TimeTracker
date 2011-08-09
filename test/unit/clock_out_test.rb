require 'test_helper'

class ClockOutTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

