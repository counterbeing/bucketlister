module ApplicationHelper
  def profile_pic_url(width, height)
      "https://graph.facebook.com/#{current_user.uid}/picture?width=#{width}&height=#{height}"
  end

  def markdown_toc(text)
    @markdown_toc ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML_TOC.new(nesting_level: 2))
    @markdown_toc.render(text).html_safe
  end


  def markdown(text)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML.new({ with_toc_data: true }), autolink: true, space_after_headers: true, fenced_code_blocks: true, with_toc_data: true)
    @markdown.render(text).html_safe
  end


end
