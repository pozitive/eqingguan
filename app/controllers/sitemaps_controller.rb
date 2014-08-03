class SitemapsController < ApplicationController
  layout nil

  def index
    headers['Content-Type'] = 'application/xml'
    @blogs = Blog.all
    @static_pages = []
    respond_to do |format|
      format.xml 
    end
  end
end
