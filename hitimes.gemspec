# DO NOT EDIT - This file is automatically generated
# Make changes to Manifest.txt and/or Rakefile and regenerate
# -*- encoding: utf-8 -*-
# stub: hitimes 1.2.3 ruby lib
# stub: ext/hitimes/c/extconf.rb

Gem::Specification.new do |s|
  s.name = "hitimes"
  s.version = "1.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeremy Hinegardner"]
  s.date = "2015-09-13"
  s.description = "Hitimes is a fast, high resolution timer library for recording performance metrics.  It uses the appropriate low method calls for each system to get the highest granularity time increments possible. It currently supports any of the following systems: * any system with the POSIX call `clock_gettime()` * Mac OS X * Windows * JRuby Using Hitimes can be faster than using a series of `Time.new` calls, and it will have a much higher granularity. It is definitely faster than using `Process.times`."
  s.email = "jeremy@copiousfreetime.org"
  s.extensions = ["ext/hitimes/c/extconf.rb"]
  s.extra_rdoc_files = ["CONTRIBUTING.md", "HISTORY.md", "Manifest.txt", "README.md"]
  s.files = ["CONTRIBUTING.md", "HISTORY.md", "LICENSE", "Manifest.txt", "README.md", "Rakefile", "examples/benchmarks.rb", "examples/stats.rb", "ext/hitimes/c/extconf.rb", "ext/hitimes/c/hitimes.c", "ext/hitimes/c/hitimes_instant_clock_gettime.c", "ext/hitimes/c/hitimes_instant_osx.c", "ext/hitimes/c/hitimes_instant_windows.c", "ext/hitimes/c/hitimes_interval.c", "ext/hitimes/c/hitimes_interval.h", "ext/hitimes/c/hitimes_stats.c", "ext/hitimes/c/hitimes_stats.h", "ext/hitimes/java/src/hitimes/Hitimes.java", "ext/hitimes/java/src/hitimes/HitimesInterval.java", "ext/hitimes/java/src/hitimes/HitimesService.java", "ext/hitimes/java/src/hitimes/HitimesStats.java", "lib/hitimes.rb", "lib/hitimes/metric.rb", "lib/hitimes/mutexed_stats.rb", "lib/hitimes/paths.rb", "lib/hitimes/stats.rb", "lib/hitimes/timed_metric.rb", "lib/hitimes/timed_value_metric.rb", "lib/hitimes/value_metric.rb", "lib/hitimes/version.rb", "spec/hitimes_spec.rb", "spec/interval_spec.rb", "spec/metric_spec.rb", "spec/mutex_stats_spec.rb", "spec/paths_spec.rb", "spec/spec_helper.rb", "spec/stats_spec.rb", "spec/timed_metric_spec.rb", "spec/timed_value_metric_spec.rb", "spec/value_metric_spec.rb", "spec/version_spec.rb", "tasks/default.rake", "tasks/extension.rake", "tasks/this.rb"]
  s.homepage = "http://github.com/copiousfreetime/hitimes"
  s.licenses = ["ISC"]
  s.rdoc_options = ["--main", "README.md", "--markup", "tomdoc"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.5"
  s.summary = "Hitimes is a fast, high resolution timer library for recording performance metrics.  It uses the appropriate low method calls for each system to get the highest granularity time increments possible."
  s.test_files = ["spec/hitimes_spec.rb", "spec/interval_spec.rb", "spec/metric_spec.rb", "spec/mutex_stats_spec.rb", "spec/paths_spec.rb", "spec/spec_helper.rb", "spec/stats_spec.rb", "spec/timed_metric_spec.rb", "spec/timed_value_metric_spec.rb", "spec/value_metric_spec.rb", "spec/version_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.4"])
      s.add_development_dependency(%q<minitest>, ["~> 5.5"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.2"])
      s.add_development_dependency(%q<json>, ["~> 1.8"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_development_dependency(%q<rake-compiler-dock>, ["~> 0.4"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.9"])
    else
      s.add_dependency(%q<rake>, ["~> 10.4"])
      s.add_dependency(%q<minitest>, ["~> 5.5"])
      s.add_dependency(%q<rdoc>, ["~> 4.2"])
      s.add_dependency(%q<json>, ["~> 1.8"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
      s.add_dependency(%q<rake-compiler-dock>, ["~> 0.4"])
      s.add_dependency(%q<simplecov>, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.4"])
    s.add_dependency(%q<minitest>, ["~> 5.5"])
    s.add_dependency(%q<rdoc>, ["~> 4.2"])
    s.add_dependency(%q<json>, ["~> 1.8"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.9"])
    s.add_dependency(%q<rake-compiler-dock>, ["~> 0.4"])
    s.add_dependency(%q<simplecov>, ["~> 0.9"])
  end
end
