import Signup from "./Signup";
import Navigation from "./Navigation";
import { useEffect, useState } from "react";
import Login from "./Login";
import ProductDetail from "./ProductDetail";
import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom";
import ProductsPage from "./ProductsPage";
import { UserContext } from "./UserContext";
import UserPage from "./UserPage";

export default function App() {
  const [currentUser, setCurrentUser] = useState({});
  const updateUser = (user) => setCurrentUser(user);

  useEffect(() => {
    fetch("/authorized_user").then((res) => {
      if (res.ok) {
        res.json().then((user) => {
          updateUser(user);
          //callback fetch
        });
      }
    });
  }, []);

  return (
    <div className="app">
      <Router>
        <Navigation updateUser={updateUser} />

        {!currentUser ? (
          <Login error={"please login"} updateUser={updateUser} />
        ) : (
          <UserContext.Provider value={{ currentUser, setCurrentUser }}>
          <Routes>
            <Route exact path="/" element={<ProductsPage />} />
            <Route path="/users/new" element={<Signup />} />
            <Route path="/products/:id" element={<ProductDetail />} />
           
            <Route path="/users/:id" element={<UserPage />} />
                    

            {/* <Route path="/about" element={
                <About />
            }/> */}
            {/* <Route path="/orders" element={
                <Orders />
            }/> */}
          </Routes>
          </UserContext.Provider>
        )}
      </Router>
    </div>
  );
}

function Home() {
  return <h2>Home</h2>;
}
function Auth(updateUser) {
  return (
    <Routes>
      <Route
        path="/login"
        element={<Login error={"please login"} updateUser={updateUser} />}
      />
      <Route path="/user/new" element={<Signup />} />
    </Routes>
  );
}

function About() {
  return <h2>About</h2>;
}

function Users() {
  return <h2>Users</h2>;
}
