class AgendaDeleteMailer < ApplicationMailer
  default from: 'from@example.com'

  def delete_agenda_mail(user, agenda)
    @user = user
    @agenda = agenda
    member_email = agenda.team.members.pluck(:email)
    mail to: member_email, subject: I18n.t('views.messages.delete_agenda_notice')
  end
end
