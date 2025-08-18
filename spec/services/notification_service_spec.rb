# frozen_string_literal: true
require 'rails_helper'

RSpec.describe NotificationService do
  describe '#initialize' do
    it '성공케이스 - 키워드 인자로 올바르게 초기화' do
      service = NotificationService.new(user_id: 1, message: '성공 테스트 메시지')
      expect(service.send_notification).to be true
    end

    it '실패케이스 - 키워드 인자 없이 호출하면 에러 발생함' do
      expect {
        NotificationService.new(2, '실패 테스트 메세지', 'my@gmail.com')
      }.to raise_error(ArgumentError)
    end
  end
end
