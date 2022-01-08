def menuGoruntule()
  puts "1) Rehbere ekle"
  puts "2) Rehberden sil"
  puts "3) Rehberde ara"
  puts "4) Rehberi görüntüle"
  puts "5) Çıkış"
end

def kisiEkle(rehber)
  kisi = Hash.new
  puts 'Ad: '
  kisi['ad'] = gets
  puts 'Soyad: '
  kisi['soyad'] = gets
  puts 'Telefon: '
  kisi['telefon'] = gets
  puts 'Yaş: '
  kisi['yas'] = gets.to_i
  rehber.append(kisi)
  puts "Kişi Başarıyla Eklendi."
end

def rehberGoruntule(rehber)
  n = rehber.length()
  for i in 0..(n-1)
    kisi = rehber[i]
    puts "#{i+1}. kişi"
    puts "Ad: #{kisi['ad']}"
    puts "Soyad: #{kisi['soyad']}"
    puts "Telefon: #{kisi['telefon']}"
    puts "Yaş: #{kisi['yas']}"
    puts "-----------------------------"
  end
end

def kisiSil(rehber)
  n = rehber.length()
  for i in 0..(n-1)
    kisi = rehber[i]
    puts "#{i+1}. kişi:"
    puts "#{kisi['ad']} #{kisi['soyad']}"
  end
  puts "Kaçıncı kişiyi silmek istiyorsunuz?"
  secim = gets.to_i
  rehber.delete_at(secim-1)
  puts "Kişi başarıyla silindi."
end

def kisiAra(rehber)
  puts 'Aranacak kelime:'
  kelime = gets
  n = rehber.length()
  for i in 0..(n-1)
    kisi = rehber[i]
    if kisi['ad'].include? kelime
      puts "#{i+1}. kişi"
      puts "Ad: #{kisi['ad']}"
      puts "Soyad: #{kisi['soyad']}"
      puts "Telefon: #{kisi['telefon']}"
      puts "Yaş: #{kisi['yas']}"
      puts "-----------------------------"
    end
  end
end

kisi1 = Hash['ad'=>'muharrem','soyad'=>'yılmaz','telefon'=>'59955552660710','yas'=>25]
kisi2 = Hash['ad'=>'anıl','soyad'=>'yılmaz','telefon'=>'5423655212','yas'=>19]
rehber = Array.new
rehber.append(kisi1)
rehber.append(kisi2)

loop do
  menuGoruntule()
  puts 'Seçiminiz: '
  secim = gets.to_i
  if secim == 1
    kisiEkle(rehber)
  elsif secim == 2
    kisiSil(rehber)
  elsif secim == 3
    kisiAra(rehber)
  elsif secim == 4
    rehberGoruntule(rehber)
  elsif secim == 5
    break
  end
end

puts "Çıkış Yaptınız."
