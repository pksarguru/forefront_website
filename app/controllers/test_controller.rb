class TestController < ApplicationController
  def test
    @projects = Project.where(featured:true)
    render("test/index-slider.html.erb")
  end
end
