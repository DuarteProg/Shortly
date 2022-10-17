import {Router} from "express";
import {shorten, idUrl, shortenUrl, deleteUrl} from "../controllers/urlControllers.js";
import { urlMiddle } from "../middlewares/urlMiddle.js"
import {tokenMiddle} from "../middlewares/tokenMiddle.js"


const urlRouter = Router();

urlRouter.post("/urls/shorten", urlMiddle, tokenMiddle, shorten ); //tokenMiddle
urlRouter.get("/urls/:id", idUrl);
urlRouter.get("/urls/open/:shortUrl", shortenUrl);
urlRouter.delete("/urls/:id", urlMiddle,deleteUrl); //tokenMiddle

export default urlRouter;