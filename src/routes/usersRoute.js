import {Router} from "express";
import {signUp, login} from "../controllers/userControllers.js";
import { usersMiddle, loginMiddle } from "../middlewares/usersMiddle.js";


const usersRouter = Router();

usersRouter.post("/signup",usersMiddle, signUp);
usersRouter.post("/signin", loginMiddle, login);

export default usersRouter;