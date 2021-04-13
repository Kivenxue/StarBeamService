import BaseController from '../base/base_controller'

class OpusController extends BaseController {

    // 获取作品数据
    async getData() {
        const { id } = this.ctx.params
        const res = await this.service.opus.findOpusData(id)
        this.success(res)
    }
    async getDataByCategory() {
        const res = await this.service.category.getOpus()
        this.success(res)
    }
}
export default OpusController