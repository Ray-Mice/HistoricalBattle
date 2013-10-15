class Battle < ActiveRecord::Base
attr_accessor :name, :date, :location, :belligerent, :strength, :casualties, :result
  before_save { self.name = name.downcase }
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :date,  presence: true
  validates :location,  presence: true
  validates :belligerent,  presence: true
  validates :result,  presence: true
end
