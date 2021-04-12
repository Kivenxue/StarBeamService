import { Column, AutoIncrement, DataType, Default, Model, PrimaryKey, Table, NotNull, HasMany } from 'sequelize-typescript'
import { Banner } from './banner'
/**
 * class 与 student 存在 一对多
 * shoot 与 banner 存在 一对多
 * 
 */

@Table({
    modelName: 'shoot'
})
/**
 * 花絮模型
 */

export class Shoot extends Model<Shoot> {
    @PrimaryKey
    @AutoIncrement
    @Column({
        type: DataType.INTEGER(10),
        comment: 'id'
    })
    public id: number
    // 创建时间
    @Default(Date.parse(new Date() as any))
    @Column({
        type: DataType.INTEGER(13),
        comment: '创建时间'
    })
    public createTime: number

    // 标题
    @NotNull
    @Column({
        type: DataType.STRING(50),
        comment: '标题',
    })
    public title: string

    // 副标题
    @NotNull
    @Column({
        type: DataType.STRING(100),
        comment: '副标题'
    })
    public sub_title: string


    // 描述
    @NotNull
    @Column({
        type: DataType.TEXT,
        comment: '描述'
    })
    public desc: string


    // 缩略图
    @NotNull
    @Column({
        type: DataType.TEXT,
        comment: '描述'
    })
    public small_img: string

    @HasMany(() => Banner, { foreignKey: 'shoot_id', sourceKey: 'id' })
    banner: Banner[]

}

export default () => Shoot