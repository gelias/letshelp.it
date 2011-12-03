class Need < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :status
  validates_presence_of :description
  belongs_to :organization
end
