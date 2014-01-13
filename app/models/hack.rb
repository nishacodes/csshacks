
class Hack < ActiveRecord::Base
  attr_accessible :id, :title, :css, :html, :html_display
  validates_presence_of :title, :css, :html

  belongs_to :user
  
  def format_html
    html.gsub("<","&lt;").gsub(">","&gt;")
  end

  def nest_css
    ".style-container {" + css + "}"
  end

  

end
