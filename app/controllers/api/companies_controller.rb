class Api::CompaniesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper

  def nif
    parsed_response = Rails.cache.fetch("nif::#{params[:id]}") do
      response = HTTParty.get("http://www.nif.pt/?json=1&key=#{ENV['NIF_KEY']}&q=#{params[:id]}")
      response.parsed_response
    end
    parsed_response['records'][params[:id]]['text_activity'] =
      strip_tags(parsed_response['records'][params[:id]]['activity'])
    render json: parsed_response
  end

end
