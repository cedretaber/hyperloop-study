
guard :shell do
  watch(%r{^src/(.*)\.rb$}) { |m| `.bundle/ruby/2.4.0/bin/opal -c src/#{m[1]}.rb > dist/bundle.js` }
end
