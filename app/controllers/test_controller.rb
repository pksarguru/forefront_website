class TestController < ApplicationController
  def test
    render("test/index-slider.html.erb")
  end
end
