require 'nokogiri'

file = File.read('book1.html')

doc = Nokogiri.HTML5(file)

tags = doc.xpath('//br')

output_file = File.open('output.html', 'w')
        
my_s = file.gsub('<br>', '</p><p>')

output_file.write(my_s)

output_file.close