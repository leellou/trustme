require 'open-uri'
require 'json'

module Moviedb
  class Discover
    def self.search(options = {})
      # Definir l'url
      base_url = "https://api.themoviedb.org/3/discover/movie?api_key=#{ENV['MOVIEDBAPIKEY']}&language=fr&include_adult=false&include_video=false"
      build_url = []
      end_url = "&watch_region=FR"
      p options
      unless options[:year].first.nil?
        build_url << "&year=#{options[:year].join('%7C')}"
      end
      unless options[:vote_average].first.nil?
        build_url << "&vote_average=#{options[:vote_average].join('%7C')}"
      end
      unless options[:genre_id].first.nil?
        build_url << "&with_genres=#{options[:genre_id].join('%7C')}"
      end
      unless options[:runtime].first.nil?
        build_url << "&with_runtime=#{options[:runtime].join('%7C')}"
      end
      unless options[:original_language_id].first.nil?
        build_url << "&with_original_language=#{options[:original_language_id].join('%7C')}"
      end
      unless options[:watch_providers].first.nil?
        build_url << "&with_watch_providers=#{options[:watch_providers].join('%7C')}"
      end

      url = base_url + build_url.join + end_url
      # Call a l'API pour récupérer le JSON
      movies_serialized = open(url).read
      # Parse du JSON
      movies = JSON.parse(movies_serialized)
      # Recup les infos dont on a besoin
      return movies["results"].sample(1).first
    end
  end
end

# url_test = 'https://api.themoviedb.org/3/discover/movie?api_key=10148f31e8f64b64e290f2ba7fe369b2&language=fr&include_adult=false&include_video=false&year=2010%7C2011%7C2012%7C2013%7C2014%7C2015&vote_average.gte=6&with_genres=28%7C878&with_runtime.gte=60&with_original_language=fr&with_watch_providers=8%7C337%7C119
