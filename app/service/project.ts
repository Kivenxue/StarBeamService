import { Service } from 'egg'
import { Banner } from '../model/banner'
import { projectCategory } from '../model/projectCategory'

class ProjectService extends Service {
    // 查找全部项目
    async getAllData() {
        const res = await this.app.model.Project.findAll({
            include: [{
                model: projectCategory,
            }]
        })
        return res
    }
    // 根据id查找项目
    async getOneData(id: number) {
        const res = await this.app.model.Project.findOne({
            include: [{ model: projectCategory }, { model: Banner }],
            where: { id }
        })
        return res
    }
}
export default ProjectService