# -*- coding: utf-8 -*-
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def add_breadcrumb(title, url = '')
    @breadcrumbs ||= [["首页", root_path]]
    url = eval(url) if url =~ /_path|_url|@/
    @breadcrumbs << [title, url]
  end
  
  def self.add_breadcrumb(title, url, options = {})
    before_filter options do |controller|
      controller.send(:add_breadcrumb, title, url)
    end
  end
end
