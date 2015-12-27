class Weather
  attr_reader :resort, :data

  def initialize(resort_slug)
    @resort = Resort.find_by_slug(resort_slug)
    @data ||= ForecastIOService.new(resort.latitude, resort.longitude).client
  end

  def current_condition
    data.currently.summary
  end

  def current_temp
    data.currently.temperature
  end

  def week_summary
    data.daily.summary
  end

  def daily_forecast
    data.daily
  end


  def todays_weather_summary
    daily_forecast.data.first.fetch("summary")
  end

  def todays_max
    daily_forecast.data.first.fetch("temperatureMax")
  end

  def todays_min
    daily_forecast.data.first.fetch("temperatureMin")
  end

end
