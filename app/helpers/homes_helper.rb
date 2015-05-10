module HomesHelper

  # Proxy to devise map name
  def resource_name
    devise_mapping.name
  end

  def resource
    instance_variable_get(:"@#{resource_name}")
  end

  def devise_mapping
    @devise_mapping ||= request.env["devise.mapping"]
  end
end
