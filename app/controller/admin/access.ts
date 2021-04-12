import BaseController from '../../base/base_controller'

class AccessController extends BaseController {

  async index() {
    this.ctx.body="test data"
  }
}

export default AccessController;