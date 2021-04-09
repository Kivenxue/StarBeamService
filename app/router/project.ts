import { Application } from 'egg'

module.exports = (app: Application) => {
    const { router, controller } = app
    // 获取全部项目（带分类）
    router.get('/api/project', controller.project.getData)

    // 根据id获取项目的分类与轮播图
    router.get('/api/project/:id', controller.project.getDataById)

}