import { Controller } from "egg";

class ShootController extends Controller {
    // return data
    async getData() {
        const res = await this.service.shoot.findShoot();
        this.ctx.body = res
    }
}
export default ShootController;