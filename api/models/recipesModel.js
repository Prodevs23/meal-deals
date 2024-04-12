const mysqlPromise = require('../config/database');

const recipesModel = {
  recipesList: async function(params) {
    const connection = await mysqlPromise.DATABASE.getConnection();
    var res = [{}];

    try {
      res = await connection.execute(`SELECT * FROM recipes ORDER BY recipe_name LIMIT ?, ?`, [params.offset, params.limit]);
      connection.release();
    }
    catch (err) {
      console.error(err)
      connection.release();
      return false
    }
    return res.length > 0 ? res : null;
  },
  recipesDetail: async function(id) {
    const connection = await mysqlPromise.DATABASE.getConnection();
    var res = [{}];

    try {
      res = await connection.execute(`SELECT * FROM recipes WHERE recipe_name = ?`, [id]);
      connection.release();
    }
    catch (err) {
      console.error(err)
      connection.release();
      return false
    }
    return res.length > 0 ? res[0] : null;
  },
}

module.exports = recipesModel;