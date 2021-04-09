import { Service } from 'egg'

class CategoryService extends Service {
    // 获取项目全部分类
    async getAllData() {
        const res = await this.app.model.Category.findAll()
        return res
    }

}

export default CategoryService