import { Application } from 'egg';

export default (app: Application) => {
  require('./router/shoot')(app)
  require('./router/index')(app)
  require('./router/opus')(app)
};
