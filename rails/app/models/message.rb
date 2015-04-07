class Message < ActiveRecord::Base
  before_create :send_sms

  private

  def send_sms
    begin
      response = RestClient::Request.new(
      :method => :post,
      :verify_ssl => false,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC5abfc69a8e719b4a456a7e7858a56fec/Messages.json',
      :user => "AC5abfc69a8e719b4a456a7e7858a56fec",
      :password => "eab68a0e46846e0834d2e47fc8f093fe",
      :payload => { :Body => body,
        :From => from,
        :To => to }
        ).execute
      rescue RestClient::BadRequest => error
        message = JSON.parse(error.response)['message']
        errors.add(:base, message)
        false
      end
    end
  end
