require 'test_helper'

class LinkToCopperForecastTest < ActionDispatch::IntegrationTest
  test "the homepage has a link to copper's forecast" do
    resort = Resort.create(name: "Copper Mountain", slug: "copper-mountain")

    visit root_path

    click_link("Copper Mountain")

    assert_equal current_path, resort_path('copper-mountain')
    assert page.has_content?("Copper Mountain Forecast")
  end
end
