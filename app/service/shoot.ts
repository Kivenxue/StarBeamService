import { Service } from "egg";
import { Banner } from "../model/banner";

class ShootService extends Service {
    // 查找全部花絮
    async findShootAll() {
        const res = this.app.model.Shoot.findAll()
        return res
    }
    // 查找花絮以及对应的轮播图
    async findShootAndBanner(id = "") {
        const where = id.length < 1 ? {} : { id }
        const res = this.app.model.Shoot.findAll({
            include: [
                { model: Banner },
            ],
            where: { ...where }
        })
        return res
    }
}

export default ShootService