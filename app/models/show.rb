class Show < ApplicationRecord
  validates_presence_of :venue
  validates_presence_of :show_time
  validates_presence_of :show_date

  scope :current, -> { where("show_date >= ?", Date.today) }
end