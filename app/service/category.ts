import { Service } from 'egg'
import { Project } from '../model/project'

class CategoryService extends Service {
    // 获取项目全部分类
    async getAllData() {
        const res = await this.app.model.Category.findAll()
        return res
    }

    // 根据id获取分类项目
    async getProjectById(id: number) {
        if (id) {
            const res = await this.app.model.Category.findAll({
                include: [{ model: Project, where: { cid: id } }]
            })
            return res
        }

    }

}

export default CategoryService