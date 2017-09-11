class ApplicationController < ActionController::API
  include ActionController::Serialization
  respond_to :json

  protected
  # TODO Pagination
  def pagination_meta(object)
    {
      current_page: object.current_page,
      next_page: object.next_page,
      prev_page: object.previous_page,
      total_pages: object.total_pages,
      total_count: object.total_entries
    }
  end
end
