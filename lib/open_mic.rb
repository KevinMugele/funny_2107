class OpenMic

  attr_reader :location, :date

  def initialize(location:, date:)
    @location = location
    @date = date
  end

end
