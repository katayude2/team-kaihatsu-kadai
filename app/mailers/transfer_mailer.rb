class TransferMailer < ApplicationMailer
  def transfer_mail(team)
    @team = team
    mail to: @team.owner.email, subject: "TRANSFER OF OWNERSHIP"
  end
end
