class OpenMic
  attr_reader :location,
              :date,
              :performers

  def initialize(information_hash)
    @location = information_hash[:location]
    @date = information_hash[:date]
    @performers = []
  end

  def welcome(name)
    @performers << name
  end

  def repeated_jokes?
  end
end
