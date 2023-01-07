class Show < ApplicationRecord
  validates_presence_of :venue
  validates_presence_of :show_time
  validates_presence_of :show_date

  scope :upcoming, -> { where("show_date >= ?", Date.yesterday) }
  scope :past, -> { where("show_date <= ?", Date.yesterday) }

  def current?
    created_at >= Date.yesterday
  end
end