# == Schema Information
#
# Table name: points
#
#  id          :integer          not null, primary key
#  name        :string
#  ccosto      :string
#  tecnologia  :string
#  observacion :text
#  ipradio     :string
#  iptele      :string
#  ipcom       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Point < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true;
  validates :ccosto, presence: true;
  validates :tecnologia, presence: true;
  validates :observacion, presence: true;
  validates :ipradio, presence: true;
  validates :iptele, presence: true;
  validates :ipcom, presence: true;
end
