class Shipment < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :part

# add ability to add multiple parts, from same supplier, to a shipment

  validates_presence_of :snum
  validates_presence_of :pnum
  validates_uniqueness_of :snum, { :scope => :pnum }
  validates_numericality_of :qty, :greater_than => 0, :less_than_or_equal_to => 500
end
