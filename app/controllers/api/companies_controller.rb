class Api::CompaniesController < ApplicationController
  include ActionView::Helpers::SanitizeHelper

  def nif
    response = Rails.cache.fetch("nif::#{params[:id]}") do
      HTTParty.get("http://www.nif.pt/?json=1&key=#{ENV['NIF_KEY']}&q=#{params[:id]}")
    end
    response.parsed_response['records'][params[:id]]['text_activity'] =
      strip_tags(response.parsed_response['records'][params[:id]]['activity'])
    render json: response.parsed_response
  end

end
