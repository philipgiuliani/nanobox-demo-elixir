defmodule Release.Tasks do
  def create_database() do
    repo = Demo.Repo
    repo.__adapter__.storage_up(repo.config)
  end

  def migrate() do
    {:ok, _} = Application.ensure_all_started(:demo)
    path = Application.app_dir(:demo, "priv/repo/migrations")
    Ecto.Migrator.run(Demo.Repo, path, :up, all: true)
  end
end
