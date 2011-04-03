# == Schema Information
# Schema version: 20110328210907
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#
#require 'active_support/cache'
class Post < ActiveRecord::Base
end
