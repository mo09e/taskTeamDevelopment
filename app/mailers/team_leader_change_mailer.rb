class TeamLeaderChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def team_leader_change_mail(team)
    @team = team
    mail to: @team.owner.email, subject: I18n.t('views.messages.leader_change_notice')
  end
end
