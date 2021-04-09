import { Application } from 'egg'

module.exports = (app: Application) => {
    const { controller, router } = app

    router.get('/api/category', controller.category.getAllData)
}