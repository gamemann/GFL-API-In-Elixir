# GFL API In Elixir
## Description
The GFL API written in Elixir. I'm writing this project to practice Elixir, a functional programming language I'm learning.

## Installation
1. Install a MySQL server.

2. Modify your environment config in `config/<env>.exs` and configure the MySQL details along with the authorization token (`Token` variable).

3. Create database by running `mix ecto.create`.

4. Migrate necessary schemas by running `mix ecto.migrate`.

5. Run the web server by running `mix phx.server`.

**Note** - By default, the web server binds to port `4000`. Therefore, if you're using localhost, you can grab the player's perk status by going to `http://localhost:4000/donators?steamid=<steamid>`. Otherwise, you can use NGINX and write a proxy config to redirect to the web application.

## Credits
* [Christian Deacon](https://www.linkedin.com/in/christian-deacon-902042186/)