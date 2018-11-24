require 'sharuby'
require 'inifile'

puts print"*************************"
puts print "Sharuby Client v.0.2.5"
puts
puts print"  Writted by Anonik     "
puts
puts print"*************************"
puts

ini = IniFile.load('settings.ini')
ini['Settings']['Language']
ini['Setting']['System']


#Italian - Windows
if ini['Settings']['System'] == "Windows"
if ini['Settings']['Language'] == "Italian"
    puts
    puts print "Scrivi il nome del tuo file (senza estensione) "
    puts
    file_name = gets.chomp
    
    puts
    puts print "Scrivi l'estensione del tuo file"
    puts
    file_ext = gets.chomp
    
    puts
    puts print "Scegli la tipologia di algoritmo"
    puts
    puts print"1)SHA1 | 2)SHA256 | 3)MD5"
    puts
    alg_check = gets.chomp

    
    if alg_check == 1.to_s
        sha1result = Sharuby::SHA1.hash(file_name + file_ext)
        puts "SHA1 = "+ sha1result
        ok = gets.chomp
    end#Fine SHA1
    
    if alg_check == 2.to_s
        sha256result = Sharuby::SHA256.hash(file_name + file_ext)
        puts "SHA256 = " + sha256result
        ok = gets.chomp
    end#Fine SHA256
    
    if alg_check == 3.to_s
        md5result = Sharuby::MD5.hash(file_name + file_ext)
        puts "MD5 = " + md5result
        ok = gets.chomp
    end#Fine MD5
    
    if alg_check >= 4.to_s
        puts print "Il numero non corrisponde a nessuna scelta, premi invio per riavviare."
        ok = gets.chomp
    end#Errore
    
   
    
    end#Fine Italiano
    end#Fine Windows

#End Italian Windows



#------------------------------------------------------------------------ E N G L I S H -----------------------------------------------------------------------------


#English - Windows
if ini['Settings']['System'] == "Windows"
if ini['Settings']['Language'] == "English"
    puts
    puts print "Write the name of your file (without extension) "
    puts
    file_name = gets.chomp
    
    puts
    puts print "Write the extension of your file "
    puts
    file_ext = gets.chomp
    
    puts
    puts print "Choose the type of algorithm"
    puts
    puts print"1)SHA1 | 2)SHA256 | 3)MD5"
    puts
    alg_check = gets.chomp

    
    if alg_check == 1.to_s
        sha1result = Sharuby::SHA1.hash(file_name + file_ext)
        puts "SHA1 = "+ sha1result
        ok = gets.chomp
    end#Fine SHA1
    
    if alg_check == 2.to_s
        sha256result = Sharuby::SHA256.hash(file_name + file_ext)
        puts "SHA256 = " + sha256result
        ok = gets.chomp
    end#Fine SHA256
    
    if alg_check == 3.to_s
        md5result = Sharuby::MD5.hash(file_name + file_ext)
        puts "MD5 = " + md5result
        ok = gets.chomp
    end#Fine MD5
    
    
    if alg_check >= 4.to_s
        puts print "The number does not correspond to any choice, press enter to restart."
        ok = gets.chomp
    end#Error
    
   
    
    end#End English
    end#End Windows

#End English Windows