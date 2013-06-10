class PagesController < ApplicationController
  def home
    @languages = Rails.cache.fetch("lang", expires_in: 5.minutes) do
      Language.all
    end
  end
end
