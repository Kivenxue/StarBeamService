import { Table, Model, PrimaryKey, AutoIncrement, Column, NotNull, DataType, HasOne } from 'sequelize-typescript'
import { Project } from './project'

@Table({
    modelName: 'category'
})

export class Category extends Model<Category>{
    @PrimaryKey
    @AutoIncrement
    @Column({
        type: DataType.INTEGER(10)
    })
    public id: number

    @NotNull
    @Column({
        type: DataType.STRING(10)
    })
    public name: string

    @NotNull
    @Column({
        type: DataType.TEXT
    })
    public desc: string

    @NotNull
    @Column({
        type: DataType.TEXT
    })
    public small_img: string

    @HasOne(() => Project, { foreignKey: 'cid' })
    project: Project



}
export default () => Category
