import { Column, AutoIncrement, Model, NotNull, PrimaryKey, Default, DataType, Table, BelongsTo } from 'sequelize-typescript'
import { opusCategory } from './opusCategory'

@Table({
    modelName: 'opus'
})
export class Opus extends Model<Opus>{
    @AutoIncrement
    @PrimaryKey
    @Column({
        type: DataType.INTEGER(10),
        comment: 'id'
    })
    public id: number

    @NotNull
    @Column({
        type: DataType.STRING(255),
        comment: '图片链接'
    })
    public image_link: string

    @NotNull
    @Column({
        type: DataType.STRING(255),
        comment: '视频链接'
    })
    public video_link: string

    @NotNull
    @Column({
        type: DataType.STRING(50),
        comment: '标题'
    })
    public title: string

    @NotNull
    @Column({
        type: DataType.STRING(50),
        comment: '副标题'
    })
    public sub_title: string

    @NotNull
    @Column({
        type: DataType.TEXT,
        comment: '描述'
    })
    public desc: string

    @NotNull
    @Default(Date.parse(new Date() as any))
    @Column({
        type: DataType.INTEGER(13),
        comment: '创建时间'
    })
    public createTime: number

    @Column({
        type: DataType.INTEGER
    })
    public cid: number

    @BelongsTo(() => opusCategory, { foreignKey: 'cid', targetKey: 'id' })
    category: opusCategory[]

}

export default () => Opus