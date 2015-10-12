function __fish_meteor_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 ]
    return 0
  end
  return 1
end

function __fish_meteor_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

# run
complete -f -c meteor -n '__fish_meteor_needs_command' -a run -d "[default] Run this project in local development mode."

# debug
complete -f -c meteor -n '__fish_meteor_needs_command' -a debug -d "Run the project, but suspend the server process for debugging."

# create
complete -f -c meteor -n '__fish_meteor_needs_command' -a create -d "Create a new project."

# update
complete -f -c meteor -n '__fish_meteor_needs_command' -a update -d "Upgrade this project's dependencies to their latest versions."

# add
complete -f -c meteor -n '__fish_meteor_needs_command' -a add -d "Add a package to this project."

# remove
complete -f -c meteor -n '__fish_meteor_needs_command' -a remove -d "Remove a package from this project."

# list
complete -f -c meteor -n '__fish_meteor_needs_command' -a list -d "List the packages explicitly used by your project."

# add-platform
complete -f -c meteor -n '__fish_meteor_needs_command' -a add-platform -d "Add a platform to this project."

# install-sdk
complete -f -c meteor -n '__fish_meteor_needs_command' -a install-sdk  -d "Installs SDKs for a platform."

# remove-platform
complete -f -c meteor -n '__fish_meteor_needs_command' -a remove-platform -d "Remove a platform from this project."

# list-platforms
complete -f -c meteor -n '__fish_meteor_needs_command' -a list-platforms -d "List the platforms added to your project."

# build
complete -f -c meteor -n '__fish_meteor_needs_command' -a build -d "Build this project for all platforms."

# lint
complete -f -c meteor -n '__fish_meteor_needs_command' -a lint -d "Build this project and run the linters printing all errors and warnings."

# shell
complete -f -c meteor -n '__fish_meteor_needs_command' -a shell -d "Launch a Node REPL for interactively evaluating server-side code."

# mongo
complete -f -c meteor -n '__fish_meteor_needs_command' -a mongo -d "Connect to the Mongo database for the specified site."

# reset
complete -f -c meteor -n '__fish_meteor_needs_command' -a reset -d "Reset the project state. Erases the local database."

# deploy
complete -f -c meteor -n '__fish_meteor_needs_command' -a deploy -d "Deploy this project to Meteor."

# logs
complete -f -c meteor -n '__fish_meteor_needs_command' -a logs -d "Show logs for specified site."

# authorized
complete -f -c meteor -n '__fish_meteor_needs_command' -a authorized -d "View or change authorized users and organizations for a site."

# claim
complete -f -c meteor -n '__fish_meteor_needs_command' -a claim -d "Claim a site deployed with an old Meteor version."

# login
complete -f -c meteor -n '__fish_meteor_needs_command' -a login -d "Log in to your Meteor developer account."

# logout
complete -f -c meteor -n '__fish_meteor_needs_command' -a logout -d "Log out of your Meteor developer account."

# whoami
complete -f -c meteor -n '__fish_meteor_needs_command' -a whoami -d "Prints the username of your Meteor developer account."

# test-packages
complete -f -c meteor -n '__fish_meteor_needs_command' -a test-packages -d "Test one or more packages."

# admin
complete -f -c meteor -n '__fish_meteor_needs_command' -a admin -d "Administrative commands."

# list-sites
complete -f -c meteor -n '__fish_meteor_needs_command' -a list-sites -d "List sites for which you are authorized."

# publish-release
complete -f -c meteor -n '__fish_meteor_needs_command' -a publish-release -d "Publish a new meteor release to the package server."

# publish
complete -f -c meteor -n '__fish_meteor_needs_command' -a publish -d "Publish a new version of a package to the package server."

# publish-for-arch
complete -f -c meteor -n '__fish_meteor_needs_command' -a publish-for-arch -d "Builds an already-published package for a new platform."

# search
complete -f -c meteor -n '__fish_meteor_needs_command' -a search -d "Search through the package server database."

# show
complete -f -c meteor -n '__fish_meteor_needs_command' -a show -d "Show detailed information about a release or package."

# help
complete -f -c meteor -n '__fish_meteor_needs_command' -a help -d "Display help"
