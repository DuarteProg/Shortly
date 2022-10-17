import {Router} from "express";
import {userMe, ranking} from "../controllers/rankingControllers.js";
import {tokenMiddle} from "../middlewares/tokenMiddle.js"


const rankingRouter = Router();

rankingRouter.get("/users/me", tokenMiddle, userMe ); //tokenMiddle
rankingRouter.get("/ranking", ranking);

export default rankingRouter;