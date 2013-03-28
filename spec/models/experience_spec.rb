# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  title       :string(255)
#  description :string(255)
#  media_url   :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Experience do
  pending "add some examples to (or delete) #{__FILE__}"
end
