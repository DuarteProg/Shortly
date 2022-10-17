import connection from "../../dataBase/dataBase.js";

export async function tokenMiddle(req, res, next){
const {authorization} = req.headers;
const token = authorization?.replace("Bearer ", "");
if(!token){
    return res.send(401).send("there is no Session")
    }

try {
    const {rows: sessions} = await connection.query(`
    SELECT * FROM sessions WHERE token = $1;
    `,[token]);
    if(!sessions){
        return res.sendStatus(401); //no token
    };
    const userIdFiltered = sessions.map(item => item.userId)
    const {rows: userId} = await connection.query(`
    SELECT * FROM sessions WHERE "userId" = $1;
    `,[userIdFiltered[0]])
    if(!userId){
        return res.sendStatus(401); //no user
    }

    
res.locals.user = userId; //peguei o userId da session
next();
} catch (error) {
    
}


};