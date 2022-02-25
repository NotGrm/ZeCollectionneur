module Shops::WorkingDaysHelper
  def working_day_to_human(working_day)
    t('date.day_names')[working_day.index]
  end
end
