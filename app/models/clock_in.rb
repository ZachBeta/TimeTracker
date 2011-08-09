class ClockIn < ActiveRecord::Base
  belongs_to :task
  has_one :clock_out
end
