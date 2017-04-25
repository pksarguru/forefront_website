class TestController < ApplicationController
  def test
    render("test/index-sidenav.html.erb")
  end
end
