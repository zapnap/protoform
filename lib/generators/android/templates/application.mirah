import "android.app.Activity"
import "android.os.Bundle"
import "android.widget.TextView"
import "android.content.Context"
import "Layout", "<%= package %>.R$layout"

class <%= app_name %> < Activity
  def onCreate(savedInstanceState:Bundle)
    super(savedInstanceState)
    setContentView(Layout.main)
  end
end
