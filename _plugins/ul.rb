module Jekyll
  class UlTag < Liquid::Block

  def initialize(tag_name, markup, tokens)
    super
  end

  def render(context)
    content = super
    "<div style='width:50%'><ul>" + content.strip.gsub("\n", "").split("- ").map{|x| "<li>#{x}</li>" }.join("\n") + "</ul></div>"
  end
end

Liquid::Template.register_tag("ul", UlTag)

