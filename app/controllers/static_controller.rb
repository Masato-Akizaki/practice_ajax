class StaticController < ApplicationController
  def top
  end

  # 1. Rails推奨方式 で使用
  def ajax_update
    @text = params[:data]
    render
  end

  # 2. フロント側はJavaScriptだけでやる方式 
  # 3. AjaxのリクエストはRails & レスポンス以降はJavaScriptでやる方式
  # で使用
  def ajax_update2
    @text = params[:data]
    render plain: @text
  end
end