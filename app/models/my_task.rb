class MyTask < ApplicationRecord
  validates :task_id, presence: true
  validates :user_id, presence: true
  validates :due_date, presence: true
  validates :frequency, presence: true
  validates :exact_time, presence: true

  belongs_to :task
  belongs_to :user

  after_create :reminder

  # Notify our appointment attendee X minutes before the appointment time
  def reminder
    twilio_number = ENV['TWILIO_NUMBER']
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    client = Twilio::REST::Client.new account_sid, ENV['TWILIO_AUTH_TOKEN']
    time_str = ((self.exact_time).localtime("+00:00")).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi #{self.name}. TASK ALERT: This is your #{task_category} reminder: #{task_title}. You set your reminder for #{time_str}. To see details, check your profile for more information. \n -Own Up Grown Up"
    message = client.api.account.messages.create(
      :from => twilio_number,
      :to => phone_number,
      :body => reminder,
    )
  end

  def when_to_run
    minutes_before_appointment = 1.minutes
    self.exact_time - minutes_before_appointment
  end

  handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }

  def task_title
    self.task.title
  end

  def task_category
    self.task.category
  end

  def phone_number
    self.user.profile.phone
  end

  def name
    self.user.profile.first_name
  end

end
