class Task < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  has_many :clock_ins
   
  accepts_nested_attributes_for :clock_ins, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
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

