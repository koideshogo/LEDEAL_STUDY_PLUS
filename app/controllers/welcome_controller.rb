class WelcomeController < ApplicationController
  skip_before_action :method_name, raise: false
  def index
  end
end
