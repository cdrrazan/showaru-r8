class Project < ApplicationRecord
  belongs_to :user
  has_one :setting
end
