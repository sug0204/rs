const knex = require('knex')({
	client: 'pg',
	connection: {
		host: 'hyeonseong_park@faraday.cse.taylor.edu',
		user: 'hyeonseong_park',
		password: 'gubojova',
		database: 'hyeonseong_park'
	}
});

const objection = require('objection');
const Model = objection.Model;
Model.knex(knex);

class location extends Model{
	static get tableName(){
		return 'location';
	}
}

module.exports = { knex, Model };




