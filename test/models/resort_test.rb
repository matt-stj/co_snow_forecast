require 'test_helper'

class ResortTest < ActiveSupport::TestCase
    test "A resort has a name" do
      resort = Resort.new(name: "Vail")

      assert_equal "Vail", resort.name
    end
end
