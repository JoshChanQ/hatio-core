require 'hatiio_core/engine'
require 'hatiio_core/version'
require 'hatiio_core/engine'

require 'hatiio_core/pluggable/pluggable_spot'
require 'hatiio_core/action_controller/search_helper'
require 'hatiio_core/patch/string_key'
require 'hatiio_core/patch/actionpack_hatio_patch'
require 'hatiio_core/patch/date'
require 'hatiio_core/active_record/stripper'
require 'hatiio_core/active_record/stringified_id'
require 'hatiio_core/active_record/userstamp'
require 'hatiio_core/active_record/rem_tracker'
require 'hatiio_core/active_record/extension_logic'
require 'hatiio_core/util/hatio_util'
require 'hatiio_core/bundle/hatio_bundle'
require 'hatiio_core/exception/exceptions'
# require 'hatiio_core/birt/birt_report'

include Hatio::Util::HatioUtil

ActiveRecord::Base.send :include, Hatio::Stripper
ActiveRecord::Base.send :include, Hatio::StringfiedID
ActiveRecord::Base.send :include, Hatio::Userstamp
ActiveRecord::Base.send :include, Hatio::RemTracker
ActiveRecord::Base.send :include, Hatio::ExtensionLogic
ActionController::Base.send :include, Hatio::SearchHelper

puts "Things Framework Loaded!"

Hatio::Bundle.new 'hatio-core', 0.0.1 do |bundle|
  bundle.dependencies = []
end
