class Queue < ActiveRecord::Base
  attr_reader :data

  def initialize(cart_data)
    @data = cart_data || []
  end

end
