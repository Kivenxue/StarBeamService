import { Application } from "egg";

module.exports = (app: Application) => {
    const { controller, router } = app
    router.get('/api/getShoot', controller.shoot.getData)
}