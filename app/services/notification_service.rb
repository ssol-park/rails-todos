class NotificationService
  def initialize(user_id:, message:, channel: 'email')
    @user_id = user_id
    @message = message
    @channel = channel
  end

  def send_notification
    return false if @message.blank?

    puts "알림 발송 #{@channel}: #{@message}"
    return true;
  end
end