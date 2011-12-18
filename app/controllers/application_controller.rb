class ApplicationController < ActionController::Base
  protect_from_forgery

  @page_title ||= '.dsy:it.'
end
