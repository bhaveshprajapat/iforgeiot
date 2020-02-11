require 'net/http'
require 'openssl'
require 'cgi'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require 'uri'
class PagesController < ApplicationController
  def home
  end
  def getMachines
    begin 
      response = JSON(Net::HTTP.get URI('https://iforge.shef.ac.uk/api/get_training?ucard_number='+params[:ucard_number]))
      output = []
      for training in response
        output.append(Maci.where(maci_training: training[1]["Training Course"], out_of_order: false))
      end
      @response = JSON.pretty_generate(output.flatten.to_json)
      @response = @response.gsub('\"', '"')
      @response = @response.slice(1,@response.length-2)
      render :json => @response
    rescue
      render :json => []
    end
  end
end
