let users = require('../controllers/users');
let recipes = require('../controllers/recipes');
let ingredients = require('../controllers/ingredients');

async function routes (fastify, options) {

    fastify.get('/', function (request, reply) {
        reply.send({message: 'ping success', code: 200})
    })

    fastify.get('/user', users.getUsersList);
    fastify.get('/user/:id', users.getUsersDetail);

    fastify.get('/recipe', recipes.getRecipesList);
    fastify.get('/recipe/:id', recipes.getRecipesDetail);

    fastify.get('/ingredient', ingredients.getIngredientsList);
    fastify.get('/ingredient/:id', ingredients.getIngredientsDetail);

}

module.exports = routes;