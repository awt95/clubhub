class ApplicationMailer < ActionMailer::Base
  default to: 'info@clubhub.com', from: 'info@clubhub.com'
  layout 'mailer'
end
