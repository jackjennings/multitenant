class Buyer < ActiveRecord::Base

  def self.from_param param
    find_by_slug! param
  end

  def full_name
    [first_name, last_name].join ' '
  end

end
