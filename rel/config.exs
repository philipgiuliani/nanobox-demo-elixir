# Import all plugins from `rel/plugins`
# They can then be used by adding `plugin MyPlugin` to
# either an environment, or release definition, where
# `MyPlugin` is the name of the plugin module.
Path.join(["rel", "plugins", "*.exs"])
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
    default_release: :default,
    default_environment: :prod

# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :")!H^!y4qb_<Ai2hqADxwO;Dq7@[4;]krY,94R&;;qq>~nj1<WG.^.x%TU,=IU&qC"
  set output_dir: "release"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :demo do
  set version: current_version(:demo)
end
