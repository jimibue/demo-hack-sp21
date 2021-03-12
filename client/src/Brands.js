import { Link } from "react-router-dom"

export default () => {
    const dummyData = [
        {id: 1, name:'TF'},
        {id: 2, name:'Coors'},
    ]

    const renderDummyData = () => {
       return dummyData.map( d=>{
           return (
               <div>
                   <Link to={{pathname: `/brands/${d.id}`, brand: d, other:'hello' }} >
                       {d.name}
                   </Link>
                   {/* <Link to={`/brands/${d.id}`} >
                       {d.name}
                   </Link> */}
               </div>
           )
       })
    }
    return(
        <>
          <h1>Brands</h1>
          <p>Demo dummy to brand show</p>
          {renderDummyData()}
        </>
    )
}