require 'test_helper'

class TabsHelperTest < ActionView::TestCase

  include BootstrapComponentsHelpers::TabsHelper

  test "calling tabs method" do
    html = tabs do |tabs|
      tabs.pane 'My first pane' do
        'inside the pane'
      end
    end
    assert_helper_output 'tabs', html
  end

  test "calling tabs with header css" do
    html = tabs do |tabs|
      tabs.pane 'My first pane', :header_class=>'my_item' do
        'inside the pane'
      end
    end
    assert_helper_output 'tabs', html
  end

end
