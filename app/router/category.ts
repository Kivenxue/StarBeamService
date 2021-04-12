import { Application } from 'egg'

module.exports = (app: Application) => {
    const { controller, router } = app

    // 获取全部分类
    router.get('/api/category', controller.category.getAllData)

    // 根据分类id获取项目
    router.get('/api/category/project/:id', controller.category.getProjectById)
}