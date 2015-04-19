# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  rating        :integer
#  description   :text
#  checkintime   :integer
#  waittime      :integer
#  restaurant_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Review < ActiveRecord::Base
  belongs_to :restaurant

  # attr_accessible :description, :rating, :restaurant_id

  validates :rating, presence: true, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer: true, message: "must be an integer from 1 to 5"}
  #
  # validates :restaurant, presence: {message: "does not exist"}

end
