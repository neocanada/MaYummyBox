class YummyboxesController < ApplicationController
  def index
    @yummyboxes = Yummybox.all
  end

  def show
  end
end
