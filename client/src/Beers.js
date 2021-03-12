import {useHistory, useParams, useLocation, Link} from 'react-router-dom'
import { Button } from 'semantic-ui-react'

// useHistory - helps us navigate (and more)
// useParams - allows us to grab data form url (and more)
// useLocation - allows us to pass data to page (and more)
export default () => {
    const { id } = useParams()
    const history = useHistory()
    const { brand, other } = useLocation()
    return(
        <>
          <Button onClick={()=> history.goBack()}>go back</Button>
          <Link to='/brands'><Button>go back</Button></Link>
          <h1>Beers from brand name: {brand.name} has id {id}</h1>
          <h1>{other}</h1>
          <h3></h3>
        </>
    )
}