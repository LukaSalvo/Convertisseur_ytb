#!/usr/bin/env ruby

require 'fileutils'

unless system("which yt-dlp > /dev/null")
  puts " yt-dlp n'est pas installé."
  puts "   Installe-le avec : brew install yt-dlp  # sur macOS / Linux avec Homebrew"
  exit
end


download_dir = File.expand_path("~/Téléchargements/YouTube")
FileUtils.mkdir_p(download_dir)


puts " Entrez le lien de la vidéo YouTube :"
print "> "
url = gets.chomp


choice = nil
loop do
  puts "\nChoisissez le format de téléchargement :"
  puts "1. Vidéo (MP4)"
  puts "2. Audio (MP3)"
  print "> "
  choice = gets.chomp
  break if ['1','2'].include?(choice)
  puts " Option invalide, choisissez 1 ou 2."
end


case choice
when '1'
  puts "\nTéléchargement de la vidéo en MP4..."
  system("yt-dlp -f mp4 -o '#{download_dir}/%(title)s.%(ext)s' \"#{url}\"")
when '2'
  puts "\nTéléchargement de l'audio en MP3..."
  system("yt-dlp -x --audio-format mp3 -o '#{download_dir}/%(title)s.%(ext)s' \"#{url}\"")
end

puts "\n Téléchargement terminé ! Les fichiers sont dans #{download_dir}"
