require 'rails_helper'

RSpec.describe PriceCalculatorService do
  describe '#get_cal_cnt' do
    it '성공케이스 - 메모이제이션으로 한 번만 계산' do
      service = PriceCalculatorService.new(1)

      first_call = service.cal_total_price
      second_call = service.cal_total_price

      expect(first_call).to eq(second_call)
    end
  end
end
