class Footer < ActiveAdmin::Component

  def build(page_presenter)
    super id: :footer
    # Settings[:whitelabel]
    span "<small>Powered by #{link_to("Catalog", "http://pharmware.net")} <div id='locator' data-whitelabel='#{1}' data-location='#{controller_name}-#{action_name}'  data-controller-name='#{controller_name}'  data-action-name='#{action_name}'></div>#{controller_name}-#{action_name};#{params[:scope]}
    <div>#{Time.current.strftime("%a, %e %b %Y %I:%M %p %Z")}</div></small>".html_safe
  end

end
