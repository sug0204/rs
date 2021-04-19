const { knex, Model } = require("../db.js");

class passenger extends Model{
	static get tableName(){
		return 'passenger';
	}
}