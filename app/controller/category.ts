import BaseController from '../base/base_controller'

class CategoryController extends BaseController {
    // 获取全部分类数据
    async getAllData() {
        const res = await this.service.category.getAllData()
        this.success(res)
    }
}

export default CategoryController