class Buyer < ActiveRecord::Base

  def self.from_param param
    find_by_slug! param
  end

end
