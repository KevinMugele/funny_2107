class OpenMic

  attr_reader :location, :date, :performers

  def initialize(location:, date:)
    @location = location
    @date = date
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    total_jokes = @performers.map do |performer|
      performer.jokes
    end.flatten #To be honest, the reason I got this(.flatten) was because I saw it before Mike told us to delete the files. Did research and understand why I had to use it here.
    total_jokes.length != total_jokes.uniq.length
  end
end
