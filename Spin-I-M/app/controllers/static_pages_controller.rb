class StaticPagesController < ApplicationController
  skip_before_action :user_logged_in_check, only: [:home]

  def home
  end
end
