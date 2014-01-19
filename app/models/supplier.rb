class Supplier < ActiveRecord::Base
  has_many :shipments
  has_many :parts, :through => :shipments  #or shipment

  validates_presence_of :lname
  validates_uniqueness_of :lname, { :scope => :fname, :case_sensitive => false }
  validates_presence_of :status
  validates_length_of :status, :is => 2
  validates_format_of :status, :with => /\A[1-9][0-9]\z/ #:on => :create/:update/:save
end
