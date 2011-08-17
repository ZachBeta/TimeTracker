class Task < ActiveRecord::Base
  belongs_to :user
  has_many :clocks, :dependent => :destroy

  accepts_nested_attributes_for :clocks, :allow_destroy => true
end


# == Schema Information
#
# Table name: tasks
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

