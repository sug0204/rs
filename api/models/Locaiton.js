const { knex, Model } = require("../db.js");

class location extends Model{
	static get tableName(){
		return 'location';
	}
}