# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  cuenta          :string
#  password_digest :string
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password validations: false

  validates :cuenta, uniqueness: true
  validates :password, presence: true, on: :create
  validates :password, length: { in: 6..10 }, allow_nil: true
  validates :name, presence: true
end
