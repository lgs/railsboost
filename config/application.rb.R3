require File.expand_path('../boot', __FILE__)

module Railsboost
  class Application < Rails::Application
    config.action_controller.session = {
      :session_key => '_railsboost_session',
      :secret      => '3a5cd1caaff29906f26d9c739519a594760f258fd917ad7f3ea57e270b22e3e8d1daf615db7b8098a80377e964d3b586ba949713e1b3219db36077e92d94ac20'
    }
  end
end

