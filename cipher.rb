
puts 'enter your text:'
text=gets.chomp.downcase
puts 'enter your key:'
key=gets.chomp.to_i


def cipher(words,key)
text=words

text=text.split(" ")
#loop
text.each do |word|
  a=word.length-1
  (0..a).each do |i|
  	x=word[i].ord+key
  	if(x>122)
  	  n=x-122
      x=97+n
  	end
  	word[i]=(x).chr
  end
end
#end of loop
puts ""
puts text
end
cipher(text,key)