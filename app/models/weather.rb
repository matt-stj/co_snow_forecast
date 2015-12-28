class Weather
  attr_reader :resort, :data

  def initialize(resort_slug)
    @resort = Resort.find_by_slug(resort_slug)
    @data ||= ForecastIOService.new(resort.latitude, resort.longitude).client
  end

  def current_condition
    data.currently.summary
  end

  def next_hour_summary
    if data.minutely
      data.minutely.summary
    else
      current_condition
    end
  end

  def next_24_hour_summary
    data.hourly.summary
  end

  def current_temp
    data.currently.fetch("temperature")
  end

  def current_feels_like_temp
    data.currently.fetch("apparentTemperature")
  end

  def current_precip_prob
    data.currently.fetch("precipProbability")
  end

  def current_precip_intensity
    data.currently.fetch("precipIntensity")
  end

  def current_wind_speed
    data.currently.fetch("windSpeed")
  end

  def current_wind_direction
    data.currently.fetch("windBearing")
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
