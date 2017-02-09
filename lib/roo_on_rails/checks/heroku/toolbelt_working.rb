require 'roo_on_rails/checks/base'

module RooOnRails
  module Checks
    module Heroku
      class ToolbeltWorking < Base
        def _intro
          "Checking if the Heroku Toolbelt is working..."
        end

        def call
          if shell? 'heroku status > /dev/null'
            pass 'read heroku status'
          else
            fail! "could not run 'heroku status'"
          end
        end
      end
    end
  end
end
