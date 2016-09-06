#!/usr/bin/env ruby -w
# script.rb - script to demonstrate a standard ruby executable
require 'pathname'
lib_path = Pathname.new(__FILE__).join('../../lib').expand_path.to_s
$LOAD_PATH.unshift(lib_path) unless $LOAD_PATH.include? lib_path

require 'boring'

Boring::CLI.run __FILE__, ARGV
