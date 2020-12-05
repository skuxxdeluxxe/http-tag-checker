#!/usr/bin/env ruby

puts "Enter the string"
paragraph = gets

open_tag_regex = /<[A-Z]>/
any_tag_regex = /<[A-Z]>|<\/[A-Z]>/

tag_matches = paragraph.scan(any_tag_regex)

stack = []
tag_matches.each do |tag_found|
    if tag_found.match(open_tag_regex)
        stack.push(tag_found)
    else
        recent_open_tag = stack.pop

        if recent_open_tag.nil?
            puts "Expected # but found #{tag_found}"
            exit 1
        end

        if recent_open_tag[1] != tag_found[2]
            puts "Expected </#{recent_open_tag[1]}> but found #{tag_found}"
            exit 1
        end
    end
end

unless stack.empty?
    recent_open_tag = stack.pop
    puts "Expected </#{recent_open_tag[1]}> but found #"
    exit 1
end

puts 'Correctly tagged paragraph'
exit 0

