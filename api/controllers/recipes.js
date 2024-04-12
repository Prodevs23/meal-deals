const recipesModel = require('../models/recipesModel')

async function getRecipesList (request, reply) {
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
    const recipesData = await recipesModel.recipesList(queryParams);

    var response = {page: page, per_page: limit, data:recipesData[0]}
    return reply.status(200).send(response);
}

async function getRecipesDetail (request, reply) {
    
    const recipesData = await recipesModel.recipesDetail(request.params.id);
    if (recipesData.length > 0) {
        return reply.status(200).send({ data:recipesData[0] });
    } else {
        return reply.status(500).send({ error: "Nem található felhasználó!"});
    }
}

module.exports = {
  getRecipesList,
  getRecipesDetail
};