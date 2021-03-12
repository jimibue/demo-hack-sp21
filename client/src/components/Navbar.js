import { Link } from 'react-router-dom'
import { Menu } from 'semantic-ui-react'

const Navbar = () => {
    return (
        <Menu>
            <Link to='/'>
                <Menu.Item>
                    Home
                </Menu.Item>
            </Link>
            <Link to='/brands'>
                <Menu.Item>
                    Brands
              </Menu.Item>
            </Link>
            <Link to='/hops'>
                <Menu.Item>
                    Hops
              </Menu.Item>
            </Link>
            <Link to='/about'>
                <Menu.Item>
                    About
              </Menu.Item>
            </Link>

        </Menu>
    )
}

export default Navbar