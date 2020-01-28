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
end
