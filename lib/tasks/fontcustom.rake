namespace :fontcustom do
  desc "Generate fonts and scss from SVGs leveraging fontcustom YML"
  task generate: :environment do
    puts "Comiling glyphs."
    %x(fontcustom compile)

    puts "Fixing paths in scss file...."
    filename = "app/assets/stylesheets/_fontcustom.scss"
    scss = File.read(filename)
    scss.gsub!(/\.\.\/fonts/, '/assets')
    File.open(filename, "w") {|file| file.puts scss}
  end

end
