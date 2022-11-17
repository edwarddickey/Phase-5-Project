import { useContext } from 'react'
import { UserContext } from "./UserContext"


function UserPage(){
    const { currentUser } = useContext(UserContext)

    return(
        <div>
            <h1>User Page</h1>
        <h2>Welcome {currentUser.name}</h2>
        </div>
    )
}
export default UserPage