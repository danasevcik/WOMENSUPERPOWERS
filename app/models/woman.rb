class Woman < ApplicationRecord
  has_many :superpowers
  validates :name, presence: true
end
