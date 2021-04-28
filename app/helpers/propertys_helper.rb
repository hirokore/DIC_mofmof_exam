module PropertysHelper
  def choose_path
    if action_name == "new"
      propertys_path
    elsif action_name == "edit"
      property_path
    end
  end
  def choose_request
    if request.patch?
      'patch'
    elsif request.post?
      'post'
    end
  end
end
