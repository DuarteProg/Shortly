import connection from "../../dataBase/dataBase.js";
import bcrypt from "bcrypt";
import{v4 as uuid} from "uuid";

export async function signUp(req, res) {
   const {name, email, password} = req.body;
try {
    const bcryptPassword = bcrypt.hashSync(password, 10)
    const { rows: existEmail } = await connection.query(`
      SELECT * FROM users WHERE email = $1;`,
        [email]
      );
if(existEmail.length > 0){
return res.sendStatus(422);
};

await connection.query(`
INSERT INTO users (name, email, password) VALUES ($1,$2, $3)`,
[name, email, bcryptPassword]);

res.sendStatus(201);

} catch (error) {
}
};

export async function login(req, res) {
 const {email, password} = req.body;

try {
    const { rows: existEmail } = await connection.query(`
      SELECT * FROM users WHERE email = $1;`,
        [email]
      );
const passwordFiltered = existEmail.map(item => item.password)
      if(!existEmail){
        return res.sendStatus(401);
        };
        const userIdFiltered = existEmail.map(item => item.id)
if(bcrypt.compareSync(password, passwordFiltered[0])){ // existEmail.id pega o id?
const token = uuid();
await connection.query(`INSERT INTO sessions (token, "userId")
VALUES ($1, $2)`, [token, userIdFiltered[0]])
return res.status(201).send(token);
}

} catch (error) {
  console.log(error.message)
    
}
}