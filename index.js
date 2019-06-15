const restify = require('restify');

const server = restify.createServer({
	name: 'myapp',
	version: '1.0.0'
});

var knex = require('knex')({
	client:'mysql',
	connection:{
		host:'us-cdbr-iron-east-02.cleardb.net',
		user:'b95f78e2c77230',
		password : '72d3ab04',
    	database : 'heroku_9a4405f5701c349'
	}
});

const errs = require('restify-errors')

server.use(restify.plugins.acceptParser(server.acceptable));
server.use(restify.plugins.queryParser());
server.use(restify.plugins.bodyParser());

const PORT = process.env.PORT || 8080;

server.listen(PORT, function(){
	console.log('%s listening at %s', server.name, server.url);
});

server.get('/positions/:id', (req, res, next) =>{
	const { id } = req.params;

	knex('vagastemp').where('id',id).first()
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});

server.get('/description/:resenha', (req, res, next) => {
	const { resenha } = req.params;

	knex('vagastemp')
	.where('resenha', 'like', '%'+resenha+'%').then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});


server.get('/location/:local', (req, res, next) => {
	const { local } = req.params;

	knex('vagastemp')
	.where('local','like','%'+local+'%').then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});


server.get('/full_time/:hora_trabalho', (req, res, next) => {
	const { hora_trabalho } = req.params;

	knex('vagastemp').where('hora_trabalho','like','%'+hora_trabalho+'%')
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});

server.get('/description/:resenha/location/:local/full_time/:hora_trabalho', (req, res, next) => {
	const { resenha } = req.params;
	const { local } = req.params;
	const { hora_trabalho } = req.params;

	knex('vagastemp')
	.where('resenha', 'like', '%'+resenha+'%').andWhere('local','like','%'+local+'%')
	.andWhere('hora_trabalho','like','%'+hora_trabalho+'%')
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});