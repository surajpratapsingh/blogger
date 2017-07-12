class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :article1
end
