class ApplicationController < ActionController::Base
  before_action :set_local

  private

  def set_local
    I18n.locale = 'es'
  end
end
