import { Context, Controller } from 'egg'

class BaseController extends Controller {
    constructor(app: Context<any>) {
        super(app)
    }
    success(data: any, msg = "") {
        this.ctx.body = {
            data,
            msg,
            code: '0000'
        }
    }
    error(msg = "") {
        this.ctx.body = {
            msg,
            code: '0001'
        }
    }
}
export default BaseController