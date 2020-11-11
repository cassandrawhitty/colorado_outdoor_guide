require 'bundler/setup'
Bundler.require

old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

require_all 'app'
