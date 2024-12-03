defmodule Liveshop.Support.Representative do
  use Ash.Resource,
    otp_app: :liveshop,
    domain: Liveshop.Support,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "representatives"
    repo Liveshop.Repo
  end

  actions do
    defaults [:read, create: [:name]]
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string do
      allow_nil? false
      public? true
    end
  end

  relationships do
    has_many :tickets, Liveshop.Support.Ticket do
      public? true
    end
  end
end
