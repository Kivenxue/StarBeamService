import BaseController from '../base/base_controller'

class ProjectController extends BaseController {
    // 获取全部数据
    async getData() {
        const res = await this.service.project.getAllData()
        this.success(res)
    }
    // 根据id获取数据
    async getDataById() {
        const { id } = this.ctx.params
        const res = await this.service.project.getOneData(id)
        this.success(res)
    }
}

export default ProjectController