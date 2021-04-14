import BaseController from '../base/base_controller'

class CategoryController extends BaseController {
    // 获取全部分类数据
    async getAllData() {
        const res = await this.service.category.getAllData()
        this.success(res)
    }

    // 根据分类获取项目
    async getProjectById() {
        const id = this.ctx.params.id
        const res = await this.service.category.getProjectById(id);
        this.success(res)
    }
    // 根据分类获取作品
    async getDataByOpus() {
        const res = await this.service.category.getOpus()
        this.success(res)
    }
}

export default CategoryController