class PagesController < ApplicationController
  def show
    respond_to do |format|
      format.html do
        render template: "pages/#{params[:page]}"
      end
      format.pdf do
        render :pdf => "file_name",
        :template => 'pages/home.html.erb',
        :layout => 'application.html.erb',
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
end
