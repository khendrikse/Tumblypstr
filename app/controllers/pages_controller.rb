class PagesController < ApplicationController
  def show
    @search_tag = ""
    respond_to do |format|
      format.html do
        render template: "pages/#{params[:page]}"
      end
      format.pdf do
        render :pdf => "file_name",
        :template => 'pages/poster.html.erb',
        :disposition => 'attachment',
        :orientation => 'Portrait',
        :page_size => 'a3',
        #:page_height => '5cm',
        #:page_width => '5cm',
        :disable_javascript => false,
        :encoding => 'utf8',
        :background => true,
        :enable_plugins => true,
        :disable_smart_shrinking => true,
        :show_as_html => params.key?('debug'),
        margin: { top: '0mm',
                  bottom: '0mm',
                  left: '0mm',
                  right: '0mm'
                }
      end
    end
  end

  def self.poster(tag)
    if tag.include? "#"
        tag.tr_s!('#', '')
    end

    client = Tumblr::Client.new :consumer_key => ENV['TUMBLR_CONSUMER_KEY']

    pictures = Array.new

    until pictures.length >= 30
      posts = client.tagged tag, :before => @timestamp ,:limit => 30
      @timestamp = posts.last["timestamp"]
      posts.each do |post|
        if post["photos"]
          post["photos"].each do |picture|
            item = picture["original_size"]["url"]
            if item.include? ("jpg" || "png")
              pictures.push(item)
            end
          end
        end
      end
    end

    until pictures.length == 30
      pictures.pop
    end
    return pictures
  end
end
