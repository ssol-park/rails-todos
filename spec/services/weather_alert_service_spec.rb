require 'rails_helper'

RSpec.describe WeatherAlertService do
  describe '#send_cold_alert' do
    it '5도 미만일 때 알림 반환' do
      service = WeatherAlertService.new(3)
      expect(service.send_cold_alert).to eq('날씨 알림: 3 도')
    end

    it '5도 이상일 땐 조기 종료' do
      service = WeatherAlertService.new(5)
      expect(service.send_cold_alert).to be_nil
    end

    it 'unless 테스트 - 한 줄' do
      puts "출력 안됨" unless true
      puts "출력 됨" unless false
      puts "nil" unless nil

      # 출력 됨
      # nil
    end

    it 'unless 테스트 - block' do
      true_flag = true
      false_flag = false

      unless true_flag
        puts "출력 안됨"
        puts "출력 안됨 true_flag"
      end

      unless false_flag
        puts "출력 됨"
        puts "출력 됨 false_flag"
      end
    end
  end
end