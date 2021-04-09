import BaseController from '../base/base_controller'

class ShootController extends BaseController {
    // 获取全部数据
    async getAllData() {
        const res = await this.service.shoot.findShootAll()
        this.success(res)
    }
    // 获取内部数据
    async getShootBanner() {
        const { id } = this.ctx.params
        if (id) {
            const res = await this.service.shoot.findShootAndBanner(id);
            this.success(res)
        } else {
            this.error('参数不能为空')
        }
    }
}
export default ShootController;