## beer api
GET	/api/brands/:brand_id/beers => {brand: brand, beers: [beer,beer]}
  - axios.get(`/api/brands/1/beers`)

Create	/api/brands/:brand_id/beers => return created beer or error
 - axios.post(`/api/brands/1/beers`,{name:'value here', style: 'value here'})

PUT	/api/brands/:brand_id/beers/:id => return updat beer or error
  - axios.put(`/api/brands/1/beers/1`,{name:'value here', style: 'value here'})

DELETE	/api/brands/:brand_id/beers/:id
 - axios.delete(`/api/brands/1/beers/1`) => return deleted beer
