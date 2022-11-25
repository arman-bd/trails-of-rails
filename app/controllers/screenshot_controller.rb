require "net/http"

# class ScreenshotController < ApplicationController
#   def index
#   def show
class ScreenshotController < ApplicationController

  # @name index
  # @description Screenshot index page
  # @return [void]
  def index
  end

  # @name show
  # @description Screenshot show page
  # @return [void]
  def show
    url = params[:url]
    if url.nil?
      @url = "No URL provided"
    else
      @url = url

      # Fetch URL
      uri = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)
      @body = response.body
    end
  end
end
