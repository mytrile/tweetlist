module ListsHelper
  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    if instance.error_message.kind_of?(Array)
      %(<span id="error">#{html_tag}</span>)
    else
      %(<span id="error">#{html_tag}</span>)
    end
  end
end
