guard "minitest" do
  # with Minitest::Spec
  watch(%r|^test/(.*)_test\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|) { |m| "test/#{m[1]}#{m[2]}_test.rb" }
  watch(%r|^test/helper\.rb|)     { "test" }
  watch(%r|^test/support/|)       { "test" }
end
