# Catalog 5

### PSQL JSON RESOURCES
https://www.periscopedata.com/blog/the-lazy-analysts-guide-to-postgres-json.html
http://schinckel.net/2014/05/25/querying-json-in-postgres/
https://www.postgresql.org/docs/9.5/static/functions-json.html
https://blog.codeship.com/unleash-the-power-of-storing-json-in-postgres/
http://edgeguides.rubyonrails.org/active_record_postgresql.html#json

# Pizza.where('ingredients ?| array[:keys]', keys: Ingredient.where(available: true).map(&:identifier))

 <!-- Pizza.where('ingredients <@ ?', Ingredient.where(available: true).map(&:identifier).to_json) -->
