# MODEL DOCUMENTATION
BRAND = {id,name, updated_at, created_at}
HOP = {id,name, updated_at, created_at}
BEER = {id,name, style, brand_id, updated_at, created_at}

# API DOCUMENTATION
GET	/api/brands =>  returns(res.data) all brands ie [brand,brand]
  - axios.get('/api/brands')

GET	/api/brands/:id => returns(res.data) { brand: brand, beers: [beer, beer]}
 - axios.get('/api/brands/1')

Post /api/brands
  - axios.post(`/api/brands`, {name:'value of name'}) => returns created brand or 422 error

Put /api/brands/:id
  - axios.put(`/api/brands/1`, {name:'value of name'}) => returns updated brand or 422 error  

DELETE '/api/brands/:id'
 - axios.delete(`/api/brands/1`) => returns deleted brand
