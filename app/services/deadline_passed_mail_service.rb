class DeadlinePassedMailService
  def self.send_deadline_passed_mail
    Event.approved.application_via_diversitytickets.deadline_yesterday.each do |event|
      User.admin.each do |user|
        AdminMailer.passed_event_deadline(event, user.email).deliver_later
      end
    end
  end
end
