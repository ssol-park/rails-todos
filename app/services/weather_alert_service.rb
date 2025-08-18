# frozen_string_literal: true

class WeatherAlertService
  def initialize(temperature)
    @temperature = temperature
  end

  def send_cold_alert
    return unless cold_weather?

    "날씨 알림: #{@temperature} 도"
  end

  private

  # ? 는 boolean 을 반환하는 메서드
  def cold_weather?
    @temperature < 5
  end
end
