<h1 align="center">
<img src="/docs/tumbly_logo.png" width="200" alt="icon"><br>
  Tumblypstr
</h1>
This Ruby on Rails app, using the Tumblr API was created during 10 Days of Code in Rotterdam 2017.

This web app will search tagged posts on Tumblr for images. Then it returns a fully designed pdf A3 poster with images from the search in 72 dpi.

Live version: http://tumblypstr.herokuapp.com

![Screenshot](/docs/screenshot1.png)

[See more screenshots](#more-screenshots)

## Getting Started

1. Download the [ZIP file](https://github.com/khendrikse/Tumblypstr/archive/master.zip)
2. Unzip the ZIP file
3. Make sure you install all neccesary prerequisites (see below)

### Prerequisites

Make sure you have Ruby installed:
* [ruby](https://www.ruby-lang.org/en/documentation/installation/) version: 2.3.1

From the application's folder run the following in your terminal:

      $ bundle

To install the gems that the app depends on, including (but not limited to, for all gems, see gemfile):
* [Ruby on Rails](https://github.com/rails/rails) - The web-application framework used.
* [wicked_pdf](https://rubygems.org/gems/wicked_pdf) - Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML.
* [wkhtmltopdf-binary](https://rubygems.org/gems/wkhtmltopdf) - Provides binaries for WKHTMLTOPDF project in an easily accessible package.
* [tumblr_client](https://rubygems.org/gems/tumblr_client) - A Ruby wrapper for the Tumblr v2 API.

### Getting started

This app uses a Consumer Key and Secret Key. These are used as environment variables. To get these and to be able to use the Web API, the first thing you will need is a Tumblr user account. To get one, simply sign up at https://www.tumblr.com.

When you have a user account, go to the [Tumblr API page](https://www.tumblr.com/docs/en/api/v2).

Click on [register an application](https://www.tumblr.com/oauth/apps) and follow the steps to get your Consumer Key and Secret Key.

Then, to start up the app, in your terminal type:

      $ TUMBLR_CONSUMER_KEY=YOURCONSUMERKEY rails s

The app should now be running locally.

## Built With

* [Tumblr API](https://www.tumblr.com/docs/en/api/v2) - The API used.
* [Ruby on Rails](http://rubyonrails.org/) - The web-application framework used.
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) - The language used.
* [rspotify](https://rubygems.org/gems/tumblr_client) - A Ruby wrapper for the Tumblr v2 API.

## More screenshots
![Screenshot](/docs/screenshot1.png)
![Screenshot](/docs/screenshot2.png)
![Screenshot](/docs/screenshot3.png)
