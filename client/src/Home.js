import { Link } from "react-router-dom"
import { Button } from "semantic-ui-react"

export default () => {
    return(
        <>
          <h1>Home</h1>
          <Link to='/brands'><Button>Brands</Button></Link>
          <Link to='/hops'><Button>Hops</Button></Link>
          <Link to='/about'><Button>About</Button></Link>
        </>
    )
}

