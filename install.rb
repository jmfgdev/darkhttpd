=begin
   Copyright © 2017  <jimmybot@teknik.io>
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published
   by the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.
   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.
=end

trap "SIGINT" do
  abort
end

puts "Installing darkhttpd"
puts "Type yes if you want to keep going..."
puts "Type no if otherwise"
input = gets.chomp

if input == "yes"
  puts "Starting install..."
  system "cc darkhttpd.c -o darkhttpd"
  puts "darkhttpd compiled"
  system "sudo 'cp darkhttpd /usr/local/bin/darkhttpd'"
else
  puts "Aborting."
  abort
end
