import { Application } from "egg";

module.exports = (app: Application) => {
    const { controller, router } = app
    router.get('/api/shoot', controller.shoot.getAllData)
    router.get('/api/shootBanner/:id', controller.shoot.getShootBanner)
}