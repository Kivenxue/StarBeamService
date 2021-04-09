import { Service } from 'egg'

class OpusService extends Service {
    // 查询作品
    async findOpusData(id = "") {
        const where = id.length < 1 ? {} : { id }
        const res = await this.ctx.model.Opus.findAll(
            {
                where: { ...where }
            }
        )
        return res
    }

}
export default OpusService