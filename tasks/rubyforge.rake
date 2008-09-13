require 'tasks/config'    

#-----------------------------------------------------------------------
# Rubyforge additions to the task library
#-----------------------------------------------------------------------
if rf_conf = Configuration.for_if_exist?("rubyforge") then

  abort("rubyforge gem not installed 'gem install rubyforge'") unless Utils.try_require('rubyforge')
  
  proj_conf = Configuration.for('project')

  namespace :dist do
    desc "Release files to rubyforge"
    task :rubyforge => [:clean, :package] do

      rubyforge = RubyForge.new

      # make sure this release doesn't already exist
      releases = rubyforge.autoconfig['release_ids']
      if releases.has_key?(Hitimes::GEM_SPEC.name) and releases[Hitimes::GEM_SPEC.name][Hitimes::VERSION] then
        abort("Release #{Hitimes::VERSION} already exists! Unable to release.")
      end

      config = rubyforge.userconfig
      config["release_notes"]     = proj_conf.description
      config["release_changes"]   = Utils.release_notes_from(proj_conf.history)[Hitimes::VERSION]
      config["Prefomatted"]       = true

      puts "Uploading to rubyforge..."
      files = FileList[File.join("pkg","#{Hitimes::GEM_SPEC.name}-#{Hitimes::VERSION}*.*")].to_a
      rubyforge.login
      rubyforge.add_release(Hitimes::GEM_SPEC.rubyforge_project, Hitimes::GEM_SPEC.name, Hitimes::VERSION, *files)
      puts "done."
    end
  end

  namespace :announce do
    desc "Post news of #{proj_conf.name} to #{rf_conf.project} on rubyforge"
    task :rubyforge do
      info = Utils.announcement
      rubyforge = RubyForge.new
      rubyforge.login
      rubyforge.post_news(rf_conf.project, info[:subject], "#{info[:title]}\n\n#{info[:urls]}\n\n#{info[:release_notes]}")
      puts "Posted to rubyforge"
    end

  end
end
