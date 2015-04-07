class Message < ActiveRecord::Base
  before_create :send_sms

  private

  def send_sms
    begin
      response = RestClient::Request.new(
      :method => :post,
      :verify_ssl => false,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC5abfc69a8e719b4a456a7e7858a56fec/Messages.json',
      :user => ENV['TWILIO_ACCOUNT_SID'],
      :password => ENV['TWILIO_AUTH_TOKEN'],
      :payload => { :Body => body,
        :From => 4802073339,
        :To => to }
        ).execute
      rescue RestClient::BadRequest => error
        message = JSON.parse(error.response)['message']
        errors.add(:base, message)
        false
      end
    end
  end
