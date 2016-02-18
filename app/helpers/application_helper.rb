module ApplicationHelper

  def show_version
    version = ENV['HEROKU_SLUG_COMMIT']
    if version.to_s.strip.length == 0
      # It's nil, empty, or just whitespace
      return 'NÃO ESPECIFICADA'
    else
      return version
    end
  end
end
