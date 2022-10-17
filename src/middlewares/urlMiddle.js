import urlSchema from "../Schemas/urlSchema.js";

export function urlMiddle(req, res, next){
    const validation = urlSchema.validate(req.body, { abortEarly: false });
    if (validation.error) {
      const erros = validation.error.details.map((detail) => detail.message);
      res.status(400).send(erros);
      return;
    }
    next();
}