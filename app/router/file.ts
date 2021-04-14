import { Application } from 'egg'

module.exports = (app: Application) => {
    const { router, controller } = app
    router.post('/api/file', controller.file.create)
}