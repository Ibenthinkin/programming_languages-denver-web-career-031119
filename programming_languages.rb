def reformat_languages(languages)
  new = Hash.new
  languages.each do |style, langs|
    langs.each do |lang, type|
      if new.has_key?(lang)
          new[lang][:style] << style
      else
        new[lang] = type
        new[lang][:style] = [style]
      end
    end
  end
  new
end
