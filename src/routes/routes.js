import {Router} from "express";
import usersRouter from "./usersRoute.js"
import urlRouter from "./urlRoute.js";
import rankingRouter from "./rankingRoute.js";

const router = Router();
router.use(usersRouter);
router.use(urlRouter);
router.use(rankingRouter);

export default router;