import connection from "../../dataBase/dataBase.js";
import {nanoid} from "nanoid";

export async function shorten(req, res) {
const {url} = req.body;
const shortUrl = nanoid(8);
const userId = res.locals.user;

try {
  const userIdFiltered = userId.map(item => item.userId)
   await connection.query(`
  INSERT INTO ranking (url, "shorUrl", "userId")
  VALUES ($1, $2, $3)  
    `, [url, shortUrl, userIdFiltered[0]])

res.status(201).send({shortUrl});

} catch (error) {
    console.log(error.message)
}

};

//
export async function idUrl(req, res) {
const {id} = req.params;

try {
 const {rows: resultUrl} = await connection.query(`
  SELECT * FROM ranking WHERE id = $1;
  `, [id]);

if(resultUrl.length === 0){
  return res.sendStatus(404);
}

delete resultUrl[0].visiURL;
delete resultUrl[0].userId;
delete resultUrl[0].createdAt;
  res.send(resultUrl)
} catch (error) {
  
}
};
//

export async function shortenUrl(req, res) {
const {shortUrl} = req.params;

try {
 const {rows: result} = await connection.query(`
  SELECT * FROM ranking WHERE "shorUrl" = $1;
  `, [shortUrl]);

  if(result.length ===0){
    return res.sendStatus(404);
  };

  const urlFiltered = result.map(item => item.url);
  const getId = result.map(item => item.id);

console.log(result)
  await connection.query(`
  UPDATE ranking SET 
  "visiURL" = "visiURL" + 1
  WHERE id = $1;
  `, [getId[0]]);     /// GABI TIRAR ATÉ AQUI H

res.redirect(urlFiltered[0])
} catch (error) {
  console.log(error.message)
}


};
//

export async function deleteUrl(req, res) {
  const {id} = req.params;
//   const userId = res.locals.user;
// console.log(userId)
try {
  const {rows: resultUrl} = await connection.query(`
  SELECT * FROM ranking WHERE id = $1;
  `, [id]);

  if(resultUrl.length === 0){
    return res.sendStatus(404);
  };

  await connection.query(`
  DELETE FROM ranking WHERE id = $1;
  `, [id])
res.sendStatus(204)
} catch (error) {
  
}
};