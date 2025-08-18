# frozen_string_literal: true

class PriceCalculatorService
  def initialize(prod_id)
    @prod_id = prod_id
    @cal_cnt = 0
  end

  def cal_total_price
    @total_price ||= increase_cal_cnt
  end

  def get_cal_cnt
    @cal_cnt
  end
  def increase_cal_cnt
    @cal_cnt += 1
  end
end
