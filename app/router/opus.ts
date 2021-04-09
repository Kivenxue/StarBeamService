import { Application } from 'egg'

module.exports = (app: Application) => {
    const { router, controller } = app

    router.get('/api/opus/',controller.opus.getData)
    router.get('/api/opus/:id', controller.opus.getData)
}