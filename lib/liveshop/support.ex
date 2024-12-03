defmodule Liveshop.Support do
  use Ash.Domain

  resources do
    resource Liveshop.Support.Ticket
    resource Liveshop.Support.Representative
  end
end
