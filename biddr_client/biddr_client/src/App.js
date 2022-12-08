import React from "react"
import AuctionIndexPage from "./components/AuctionIndexPage";
import AuctionShowPage from "./components/AuctionShowPage";
import 'bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter, Route, Routes} from "react-router-dom";
import WelcomePage from "./components/WelcomePage";
import NavBar from "./components/NavBar"
import SignInPage from "./components/SignInPage";

const App = () =>  {
  return (
    <BrowserRouter>
    <NavBar/>
    <Routes>
          <Route
            exact
            path="/auctions"
            element={<AuctionIndexPage/>}
          />
          <Route
            path="/"
            element={<WelcomePage/>}
            exact
          />
          <Route
            path="/"
            element={<SignInPage/>}
            exact
          />
          <Route
            exact
            path="/auctions/:id"
            render={(routeProps) => (
              <AuctionShowPage {...routeProps}/>
            )}
          />
        </Routes>
      </BrowserRouter>
  )
}

export default App;