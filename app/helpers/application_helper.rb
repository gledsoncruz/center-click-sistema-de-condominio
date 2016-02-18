module ApplicationHelper

  def show_version
    version = ENV['SOURCE_VERSION']
    if version.to_s.strip.length == 0
      # It's nil, empty, or just whitespace
      return 'NÃO ESPECIFICADA'
    else
      return version
    end
  end
end
