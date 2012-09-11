class DuController < ApplicationController
  include DuHelper
  def query
    respond_to { |format| format.json { send_data all_du(params['du'])} }
  end
end
