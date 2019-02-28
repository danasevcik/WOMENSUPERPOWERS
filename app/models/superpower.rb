class Superpower < ApplicationRecord
  belongs_to :woman
  validate :is_this_unique
  validates :name, presence: true

  def is_this_unique
    if :seen_before? != true
      errors.add(:seen_before?, "Please only add new superpowers. We want the unique ones 🙌")
    end
  end

end
