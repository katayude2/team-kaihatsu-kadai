class DeleteMailer < ApplicationMailer
  def delete_mail(agenda)
    @agenda = agenda
    @emails = []
    @agenda.team.members.each do |member|
      @emails.push(member.email)
    end
    mail to: @emails, subject: 'DELETE AGENDA'
  end
end
