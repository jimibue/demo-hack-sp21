import './App.css';
import {Container} from 'semantic-ui-react'
import { Route, Switch } from 'react-router-dom';
import Home from './Home';
import Brands from './Brands';
import Beers from './Beers';
import About from './About';
import Hops from './Hops';
import Navbar from './components/Navbar';

function App() {
  return (
    <>
    <Navbar />
     <Container>
       <Switch>
         <Route exact path='/' component={Home}/>
         <Route exact path='/brands' component={Brands}/>
         <Route exact path='/brands/:id' component={Beers}/>
         <Route exact path='/about' component={About}/>
         <Route exact path='/hops' component={Hops}/>
    
       </Switch>
     </Container>
    </>
  );
}

export default App;
