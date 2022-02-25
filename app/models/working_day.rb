class WorkingDay
  include ActiveModel::Conversion
  include Comparable

  attr_accessor :opening_hours
  attr_reader :index, :name

  def self.all
    Date::DAYNAMES.map do |day_name|
      new(day_name)
    end
  end

  def initialize(name)
    @name = name.downcase

    @index = Date::DAYNAMES.find_index do |day_name|
      day_name.downcase == @name
    end
  end

  def <=>(other)
    index <=> other.index
  end
end
