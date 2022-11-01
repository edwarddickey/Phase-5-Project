import Signup from "./Signup";
import Navigation from "./Navigation";
import {useEffect, useState} from 'react'
import Login from "./Login";
import {
  BrowserRouter as Router,
  Routes,
  Route,
  Link
} from "react-router-dom";

export default function App() {

  const [currentUser, setCurrentUser] = useState(false)
  const updateUser = (user) => setCurrentUser(user)

  useEffect(() => {
    fetch('/authorized_user')
    .then(res => {
      if(res.ok){
        res.json().then(user => {
          updateUser(user)
          //callback fetch
        })
      }
    })
  },[])

  return (
    <div className="app">
      <Router>
      <Navigation updateUser={updateUser}/>
    {!currentUser? <Login error={'please login'} updateUser={updateUser}/> : 
        <Routes>
            <Route exact path="/" element={
                <Home />
            }/>
            <Route path="/users/new" element={
                <Signup />
            }/>
            {/* <Route path="/restaurants/:id" element={
                <RestaurantPage />
            }/> */}
            {/* <Route path="/contact" element={
                <Contact />
            }/> */}
            {/* <Route path="/about" element={
                <About />
            }/> */}
            {/* <Route path="/orders" element={
                <Orders />
            }/> */}
            </Routes>  } 
        </Router>
    </div>
)};

function Home() {
  return <h2>Home</h2>;
}

function About() {
  return <h2>About</h2>;
}

function Users() {
  return <h2>Users</h2>;
}
