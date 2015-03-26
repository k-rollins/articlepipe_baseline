class PagesController < ApplicationController

  def home
  end

  def test_mail
    @secure = SecureResource.new("i chopped down your cherry tree", "tobias is a nevernude", 17)
    authorize! :read, @secure
  end
end
