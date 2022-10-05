class Show < ApplicationRecord
  scope :current, -> { where("show_date >= ?", Date.today) }
end