import "android.app.Activity"
import "android.os.Bundle"
import "android.widget.TextView"
import "android.content.Context"

class <%= app_name %> < Activity
  def onCreate(savedInstanceState:Bundle)
    super(savedInstanceState)
    # cast to Context should be unnecessary
    tv = TextView.new(Context(self))
    tv.setText("Hello World!")
    setContentView(tv)
  end
end
