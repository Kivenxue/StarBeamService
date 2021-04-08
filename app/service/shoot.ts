import { Service } from "egg";
import { Banner } from "../model/banner";

class ShootService extends Service {
    async findShoot() {
        const res = this.app.model.Shoot.findAll({
            include: [
                { model: Banner },

            ]
        })
        return res
    }
}

export default ShootService