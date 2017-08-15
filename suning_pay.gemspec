# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "suning_pay/version"

Gem::Specification.new do |spec|
  spec.name          = "suning_pay"
  spec.version       = SuningPay::VERSION
  spec.authors       = ["Terry.Tu"]
  spec.email         = ["tuminfei1981@gmail.com"]

  spec.summary       = %q{Suning Pay 1.1.2 doc.}
  spec.description   = %q{Suning Pay 1.1.2 doc.}
  spec.homepage      = "https://gitee.com/tarzansos/suning_pay"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1.0"
  spec.add_dependency "faraday", "~> 0.9.0"
  #spec.add_runtime_dependency 'railties', '>= 3.1.0'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
