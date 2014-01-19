class Part < ActiveRecord::Base
  has_many :shipments
  has_many :suppliers, :through => :shipments

  validates_uniqueness_of :pname
  validates_numericality_of :weight, :greater_than => 0, :less_than => 85
end
