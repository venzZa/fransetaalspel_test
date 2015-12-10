class Assignment < ActiveRecord::Base
  belongs_to :collection
  validates :answer, presence: true
  validates :question, presence: true
  validates :collection_id, presence: true
end
