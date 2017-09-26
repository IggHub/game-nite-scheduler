# frozen_string_literal: true

class AvailabilityListController < ApplicationController
  layout "availability_list"

  def index
    @availability_list_props = { name: "Stranger" }
  end
end
