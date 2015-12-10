class Collection < ActiveRecord::Base
  has_many :assignments
  belongs_to :user
  validates :name, presence: true
  validates :year, presence: true
end
