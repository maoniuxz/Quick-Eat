# == Schema Information
#
# Table name: restaurants
#
#  id           :integer          not null, primary key
#  address      :string
#  businessName :string
#  photoURL     :string
#  city         :string
#  state        :string
#  url          :string
#  reviewCount  :integer
#  stars        :float
#  longitude    :float
#  latitude     :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
