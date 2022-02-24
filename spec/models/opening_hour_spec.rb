require 'rails_helper'

RSpec.describe OpeningHour, type: :model do
  describe '[associations]' do
    it { is_expected.to belong_to :shop }
  end

  describe '[enums]' do
    it 'define the day enum' do
      expect(subject).to define_enum_for(:day).with_values(
        monday:    'monday',
        tuesday:   'tuesday',
        wednesday: 'wednesday',
        thursday:  'thursday',
        friday:    'friday',
        saturday:  'saturday',
        sunday:    'sunday',
      ).backed_by_column_of_type(:string)
    end
  end

  describe '[validations]' do
    it { is_expected.to validate_presence_of :day }
    it { is_expected.to validate_presence_of :opening }
    it { is_expected.to validate_presence_of :closing }

    it { is_expected.to allow_values(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday).for(:day) }

    it 'does not allow closing time to be smaller than opening time' do
      opening_hour = FactoryBot.build(:opening_hour, opening: '10:00', closing: '9:00')
      expect(opening_hour).to_not be_valid
    end
  end
end
