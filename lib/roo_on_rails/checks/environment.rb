require 'roo_on_rails/checks/env_specific'
require 'roo_on_rails/checks/github/branch_protection'
require 'roo_on_rails/checks/heroku/app_exists'
require 'roo_on_rails/checks/heroku/preboot_enabled'
require 'roo_on_rails/checks/heroku/app_exists'
require 'roo_on_rails/checks/sidekiq/settings'

module RooOnRails
  module Checks
    class Environment < EnvSpecific
      requires GitHub::BranchProtection
      requires Heroku::PrebootEnabled
      requires Sidekiq::Settings

      def call
        # nothing to do
      end

      protected

      def intro
        "Validated #{bold @env} environment"
      end
    end
  end
end
