class PagesController < ApplicationController
  include HighVoltage::StaticPage

  skip_before_filter :require_login
  layout :layout_for_page

  private

  def layout_for_page
    'static'
  end
end
