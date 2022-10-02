class Message < ApplicationRecord
  validates_presence_of :contact_name
  validates_presence_of :contact_email
  validates_presence_of :message_body
  validates_presence_of :message_subject
end