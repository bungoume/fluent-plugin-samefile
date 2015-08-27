# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-samefile"
  spec.version       = "0.0.2"
  spec.authors       = ["Yuri Umezaki"]
  spec.email         = ["bungoume@gmail.com"]
  spec.homepage      = "https://github.com/bungoume/fluent-plugin-samefile"
  spec.summary       = "Fluentd plugin to output same file"
  spec.description   = spec.summary
  spec.license       = "Aache-2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "fluentd"
  spec.add_development_dependency "rake"
end
