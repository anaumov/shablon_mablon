class BaseMailer < ActionMailer::Base
  default from: Settings.mailer.default_from,
          to: Settings.mailer.default_to,
          "Message-ID" => lambda { "<#{SecureRandom.uuid}@#{Settings.mailer.domain}>" }

  include ApplicationHelper
end
