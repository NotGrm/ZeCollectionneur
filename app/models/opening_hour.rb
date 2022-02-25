class OpeningHour < ApplicationRecord
  enum day: {
    monday:    'monday',
    tuesday:   'tuesday',
    wednesday: 'wednesday',
    thursday:  'thursday',
    friday:    'friday',
    saturday:  'saturday',
    sunday:    'sunday'
  }

  belongs_to :shop

  validates :day, presence: true

  with_options unless: :day_off? do
    validates :opening, presence: true
    validates :closing, presence: true, comparison: { greater_than: :opening }
  end

  def working_day
    WorkingDay.new(day)
  end
end
