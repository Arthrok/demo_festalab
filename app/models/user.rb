class User < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "formato inválido" }
  # 999.999.999-99
  validates :cpf, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "formato inválido" } 
  # 99 99999-9999
  validates :phone, format: { with: /\A\d{2}\s\d{5}-\d{4}\z/, message: "formato inválido" }
end
