import connection from "../../dataBase/dataBase.js";

export async function userMe(req, res) {
  const userId = res.locals.user;

  try {
    const userIdFiltered = userId.map((item) => item.userId);
    const { rows: countVisit } = await connection.query(
      `
    SELECT SUM(ranking."visiURL")
    FROM ranking WHERE "userId" = $1 ;
    `,
      [userIdFiltered[0]]
    );

    const { rows: estrutura } = await connection.query(
      `
    SELECT users.id, users.name FROM users WHERE users.id = 
    $1;
    `,
      [userIdFiltered[0]]
    );

    const { rows: urlResult } = await connection.query(
      `
    SELECT ranking.id, ranking."shorUrl",
     ranking.url, ranking."visiURL" as 
     "visitCount" FROM ranking 
    WHERE ranking."userId" = 
    $1;
    `,
      [userIdFiltered[0]]
    );

    res.send({
      ...estrutura[0],
      visitCount: countVisit[0].sum,
      shortenedUrls: urlResult,
    });
  } catch (error) {}
}

export async function ranking(req, res) {
  try {
    const { rows: result } = await connection.query(`
      SELECT users.id, users.name, COUNT(ranking.id)
      AS "linksCount",
      SUM(COALESCE(ranking."visiURL", 0)) AS "visitCount" FROM users 
      LEFT JOIN ranking ON ranking."userId" = users.id
      GROUP BY users.id, users.name
      ORDER BY "visitCount" DESC
      LIMIT 10;
    `);

    res.send(result);
  } catch (error) {
  res.sendStatus(500)
  }
}
