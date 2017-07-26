class PagesController < ApplicationController
  def show
    respond_to do |format|
      format.html do
        render template: "pages/#{params[:page]}"
      end
      format.pdf do
        render :pdf => "file_name",
        :template => 'pages/home.html.erb',
        layout: 'application.html.erb',
        disposition: 'attachment'
      end
    end
  end
end
