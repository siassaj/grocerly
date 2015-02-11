require 'grocerly/html/base'

module Grocerly

  module Html

    class Header < Base

      def initialize(unsafe_data = {})
        super
        @title  = data.fetch(:title, "No Title")
      end

      private

      def _generate

        cgi.head do

          cgi.title { "Grocerly | #{@title}" } +

          cgi.link(href: "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css", rel: "stylesheet")
        end

      end

    end

  end

end
