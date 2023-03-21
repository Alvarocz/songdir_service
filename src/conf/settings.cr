require "db"
require "pg"

DATABASE_URL = ENV["DATABASE_URL"]
JWT_EXPIRATION_MINUTES = ENV.fetch "JWT_EXPIRATION_MINUTES", 2
JWT_SECRET_KEY = ENV.fetch "JWT_SECRET_KEY", "1234"
PASSWORD_SECRET_KEY = ENV.fetch "PASSWORD_SECRET_KEY", "1234"
ENABLE_EMAIL_CONFIRMATION = ENV.fetch "ENABLE_EMAIL_CONFIRMATION", false

DATABASE = DB.open(DATABASE_URL)
