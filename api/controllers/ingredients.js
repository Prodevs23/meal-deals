const ingredientsModel = require('../models/ingredientsModel')

async function getIngredientsList (request, reply) {
    var limit   = 20;
    var offset  = 0;
    var page    = 1;
    
    if (typeof request.query.limit !== "undefined") {
      if (parseInt(request.query.limit) > 0) {
        limit = parseInt(request.query.limit);
      }
    }

    if (typeof request.query.page !== "undefined") {
      if (parseInt(request.query.page) > 0) {
        page = parseInt(request.query.page);
        offset = (page-1)*limit
      }
    }

    var queryParams = { offset: offset, limit: limit }
    const ingredientsData = await ingredientsModel.ingredientsList(queryParams);

    var response = {page: page, per_page: limit, data:ingredientsData[0]}
    return reply.status(200).send(response);
}

async function getIngredientsDetail (request, reply) {
    
    const ingredientsData = await ingredientsModel.ingredientsDetail(request.params.id);
    if (ingredientsData.length > 0) {
        return reply.status(200).send({ data:ingredientsData[0] });
    } else {
        return reply.status(500).send({ error: "Nem található felhasználó!"});
    }
}

module.exports = {
  getIngredientsList,
  getIngredientsDetail
};