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
#

class Point < ActiveRecord::Base
end
