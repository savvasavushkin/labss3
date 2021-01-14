# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main.rb'

class TestFunction < Minitest::Test
def setup 
    @file_f = File.open('f.txt', 'w+')
    @file_g = File.open('g.txt', 'w+')
end
def test_1
@file_f = File.open('f.txt', 'w+')
@file_g = File.open('g.txt', 'w+')
text_f = "a2s\ngaEf\n5ff\nwssagd\nraFs"
text_g = "2s\nEf\n\ngd\nFs\n"
@file_f.write text_f
foo(@file_f, @file_g, false)
@file_g.seek(File::SEEK_SET)
assert_equal(@file_g.read, text_g)
@file_f.close
@file_g.close
end

def test_2
@file_f = File.open('f.txt', 'w+')
@file_g = File.open('g.txt', 'w+')
assert File.exist?(@file_f), true
end

def teardown
    File.delete @file_f
    File.delete @file_g 
end
end