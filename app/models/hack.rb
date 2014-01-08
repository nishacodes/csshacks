require "debugger"
class Hack < ActiveRecord::Base
  attr_accessible :id, :title, :css, :html, :html_display
  validates_presence_of :title, :css, :html

  def format_html
    html.gsub("<","&lt;").gsub(">","&gt;")
  end

end
