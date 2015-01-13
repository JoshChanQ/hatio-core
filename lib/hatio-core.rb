require 'hatio-core/engine'
require 'hatio-core/version'
require 'hatio-core/engine'

require 'hatio-core/pluggable/pluggable_spot'
require 'hatio-core/action_controller/search_helper'
require 'hatio-core/patch/string_key'
require 'hatio-core/patch/actionpack_hatio_patch'
require 'hatio-core/patch/date'
require 'hatio-core/active_record/stripper'
require 'hatio-core/active_record/stringified_id'
require 'hatio-core/active_record/userstamp'
require 'hatio-core/active_record/rem_tracker'
require 'hatio-core/active_record/extension_logic'
require 'hatio-core/util/hatio_util'
require 'hatio-core/bundle/hatio_bundle'
require 'hatio-core/exception/exceptions'
# require 'hatio-core/birt/birt_report'

include Hatio::Util::HatioUtil

ActiveRecord::Base.send :include, Hatio::Stripper
ActiveRecord::Base.send :include, Hatio::StringfiedID
ActiveRecord::Base.send :include, Hatio::Userstamp
ActiveRecord::Base.send :include, Hatio::RemTracker
ActiveRecord::Base.send :include, Hatio::ExtensionLogic
ActionController::Base.send :include, Hatio::SearchHelper

puts "Things Framework Loaded!"

Hatio::Bundle.new 'hatio-core', HatioCore::VERSION do |bundle|
  bundle.dependencies = []
end
