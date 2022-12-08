import React from "react"
import Nav from 'react-bootstrap/Nav';
import { NavLink } from "react-router-dom";


export default function Navbar() {
    return (
        <nav>
            <NavLink to="/">Welcome</NavLink>|
            <NavLink to="/auctions">Auctions</NavLink>|
            <NavLink to="/signIn">Sign In</NavLink>
        </nav>
    )
}