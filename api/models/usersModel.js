const mysqlPromise = require('../config/database');

const usersModel = {
  usersList: async function(params) {
    const connection = await mysqlPromise.DATABASE.getConnection();
    var res = [{}];

    try {
      res = await connection.execute(`SELECT username, register_date, last_login_date FROM users WHERE user_id > 0 ORDER BY username LIMIT ?, ?`, [params.offset, params.limit]);
      connection.release();
    }
    catch (err) {
      console.error(err)
      connection.release();
      return false
    }
    return res.length > 0 ? res : null;
  },
  usersDetail: async function(id) {
    const connection = await mysqlPromise.DATABASE.getConnection();
    var res = [{}];

    try {
      res = await connection.execute(`SELECT username, register_date, last_login_date FROM users WHERE username = ?`, [id]);
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

module.exports = usersModel;
