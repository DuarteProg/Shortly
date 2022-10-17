import usersSchema from "../Schemas/usersSchema.js";
import loginSchema from "../Schemas/loginSchema.js";

export function usersMiddle(req, res, next){
    const validation = usersSchema.validate(req.body, { abortEarly: false });
    if (validation.error) {
      const erros = validation.error.details.map((detail) => detail.message);
      res.status(400).send(erros);
      return;
    }
    next();
}


export function loginMiddle(req, res, next){
    const validation = loginSchema.validate(req.body, { abortEarly: false });
    if (validation.error) {
      const erros = validation.error.details.map((detail) => detail.message);
      res.status(400).send(erros);
      return;
    }
    next();
}