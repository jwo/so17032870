class PagesController < ApplicationController
  def home
    @languages = Rails.cache.fetch("lang") do
      Language.all
    end
  end
end
