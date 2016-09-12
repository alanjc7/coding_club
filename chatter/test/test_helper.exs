ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Chatter.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Chatter.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Chatter.Repo)

