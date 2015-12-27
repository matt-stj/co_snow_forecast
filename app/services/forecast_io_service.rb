class ForecastIOService
require 'forecast_io'
  attr_reader :client

  def initialize(lat, long)
    ForecastIO.configure do |configuration|
      configuration.api_key = ENV['forecast_io_api_key']
    end

    @client ||= ForecastIO.forecast(lat, long)
  end

  def current_condition
    client.currently.summary
  end

  def current_temp
    client.currently.temperature
  end

  def daily_forecast
    client.daily
  end

end
