import { Column, AutoIncrement, Model, NotNull, PrimaryKey, Default, DataType, Table, BelongsTo } from 'sequelize-typescript'
import { Shoot } from './shoot'


@Table({
    modelName: 'banner',
})
export class Banner extends Model<Banner>{
    @AutoIncrement
    @PrimaryKey
    @Column({
        type: DataType.INTEGER(10),
        comment: '编号'
    })
    public id: number

    @NotNull
    @Column({
        type: DataType.TEXT,
        comment: '图片链接'
    })
    public link: string

    @NotNull
    @Column({
        type: DataType.STRING(100),
        comment: '描述'
    })
    public desc: string

    @NotNull
    @Default(Date.parse(new Date() as any))
    @Column({
        type: DataType.INTEGER,
        comment: '创建时间'
    })
    public createTime: number

    @NotNull
    @Column({
        type: DataType.INTEGER(10),
        comment: '关联的花絮id'
    })
    public shoot_id: number

    @BelongsTo(() => Shoot, { foreignKey: 'shoot_id', targetKey: 'id' })
    shoot: Shoot[]

}
export default () => Banner