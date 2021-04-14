import { Service } from 'egg'
import { Opus } from '../model/opus'
// import { Opus } from '../model/opus'
// import { opusCategory } from '../model/opusCategory'
// import { Opus } from '../model/opus'
import { Project } from '../model/project'

class CategoryService extends Service {
    // 获取项目全部分类
    async getAllData() {
        const res = await this.app.model.ProjectCategory.findAll()
        return res
    }

    // 根据id获取分类项目
    async getProjectById(id: number) {
        if (id) {
            const res = await this.app.model.ProjectCategory.findAll({
                include: [{ model: Project, where: { cid: id } }]
            })
            return res
        }

    }
    // 查询作品分类
    async getOpus() {
        const res = await this.app.model.OpusCategory.findAll({
            include: [{ model: Opus }], order: [['id', 'DESC']]
        })
        return res
    }

}

export default CategoryService