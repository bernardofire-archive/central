class InstitutionController < ApplicationController
  def create
    @institution = Institution.new(params)
  end
end
