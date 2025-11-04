#!/usr/bin/env ruby

require 'open3'

def download_video(url, format)
  case format
  when '1'
    puts " Téléchargement de la vidéo en MP4..."
    system("yt-dlp -f mp4 \"#{url}\"")
  when '2'
    puts " Téléchargement de l'audio en MP3..."
    system("yt-dlp -x --audio-format mp3 \"#{url}\"")
  else
    puts " Option invalide. Veuillez choisir 1 ou 2."
  end
end

puts "🎬 Entrez le lien de la vidéo YouTube :"
print "> "
url = gets.chomp

puts "\n Choisissez le format de téléchargement :"
puts "1. Vidéo (MP4)"
puts "2. Audio (MP3)"
print "> "
choice = gets.chomp

download_video(url, choice)

puts "\n✅ Téléchargement terminé !"
