class Student < ActiveRecord::Base
  attr_accessible :name

  belongs_to :house

  def sorting_hat
    self.house ||= House.find(rand(1..House.all.size))
  end
end
