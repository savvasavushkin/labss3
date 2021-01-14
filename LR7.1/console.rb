# frozen_string_literal: true

require_relative 'main'

fff = File.open('f.txt', 'w+')
ggg = File.open('g.txt', 'w+')

foo(fff, ggg)
print "\nF:\n"
fff.seek(File::SEEK_SET)
fff.each { |str| print str }
print "\nG:\n"
ggg.seek(File::SEEK_SET)
ggg.each { |str| print str }
fff.close
ggg.close