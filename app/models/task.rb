class Task < ActiveRecord::Base
  belongs_to :user
  has_many :clock_ins
end

# == Schema Information
#
# Table name: tasks
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

