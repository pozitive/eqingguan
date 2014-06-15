# -*- coding: utf-8 -*-
module ApplicationHelper
  def markdown(text)
    options = {
      hard_wrap: true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true
    }
    
    extensions = {
      autolink: true,
      superscript: true,
      disable_indented_code_blocks: true
    }
    
    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    
    markdown.render(text).html_safe
  end

  def title(title = nil)
    if title.present?
      content_for :title, title
    else
      content_for?(:title) ? content_for(:title) + ' | 在俄罗斯债务追讨' : APP_CONFIG['default_title']
    end
  end

  def meta_keywords(tags = nil)
    if tags.present?
      content_for :meta_keywords, tags
    else
      content_for?(:meta_keywords) ? content_for(:meta_keywords) : APP_CONFIG['default_keywords']
    end
  end

  def meta_description(description = nil)
    if description.present?
      content_for :meta_description, description
    else
      content_for?(:meta_description) ? content_for(:meta_description) : APP_CONFIG['default_description']
    end
  end
end
