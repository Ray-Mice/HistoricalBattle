class Battle < ActiveRecord::Base
attr_accessor :name, :date, :location, :belligerentA, :belligerentB, :strengthA, :strengthB, :casualtiesA, :casualtiesB, :result
  before_save { self.name = name.downcase }
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :date,  presence: true
  validates :location,  presence: true
#  validates :belligerentA,  presence: true
#  validates :belligerentB,  presence: true
  validates :result,  presence: true
end
