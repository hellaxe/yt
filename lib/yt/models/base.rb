require 'yt/actions/delete'
require 'yt/actions/update'

require 'yt/associations/has_authentication'
require 'yt/associations/has_many'
require 'yt/associations/has_one'
require 'yt/associations/has_reports'

require 'yt/errors/request_error'

module Yt
  module Models
    class Base
      include Actions::Delete
      include Actions::Update

      extend Associations::HasReports
      extend Associations::HasOne
      extend Associations::HasMany
      extend Associations::HasAuthentication
    end
  end

  # By including Models in the main namespace, models can be initialized with
  # the shorter notation Yt::Video.new, rather than Yt::Models::Video.new.
  include Models
end