import { Link, useLocation } from 'react-router-dom'
import { Menu } from 'semantic-ui-react'

const Navbar = () => {
    const {pathname} = useLocation()
    return (
        <Menu>
            <Link to='/'>
                <Menu.Item active={pathname == '/'}>
                    Home
                </Menu.Item>
            </Link>
            <Link to='/brands' >
                <Menu.Item active={pathname == '/brands'}>
                    Brands
              </Menu.Item>
            </Link>
            <Link to='/hops'>
                <Menu.Item active={pathname == '/hops'}>
                    Hops
              </Menu.Item>
            </Link>
            <Link to='/about' >
                <Menu.Item  active={pathname == '/about'}>
                    About
              </Menu.Item>
            </Link>

        </Menu>
    )
}

export default Navbar