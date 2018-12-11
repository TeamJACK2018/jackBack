class Appointment < ActiveRecord::Base
  validates :name, presence: true
  validates :phone_number, presence: true
  validates :time, presence: true

  after_create :reminder

  # Notify our appointment attendee X minutes before the appointment time
  def reminder
    @twilio_number = ENV['+14243206946']
    account_sid = ENV['AC8b9e42fead05227449ff837386b7e80e']
    @client = Twilio::REST::Client.new account_sid, ENV['59b5bb2b2c8a35a3d46feedfc8803ce6']
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi #{self.name}. Just a reminder that you have an appointment coming up at #{time_str}."
    message = @client.api.account(account_sid).messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => reminder,
    )
  end

  def when_to_run
    minutes_before_appointment = 1.minutes
    time - minutes_before_appointment
  end

  handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }
end
