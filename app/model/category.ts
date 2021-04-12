import { Table, Model, PrimaryKey, AutoIncrement, Column, NotNull, DataType, HasMany } from 'sequelize-typescript'
import { Project } from './project'

@Table({
    modelName: 'projectCategory'
})

export class projectCategory extends Model<projectCategory>{
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

    @HasMany(() => Project, { foreignKey: 'cid', sourceKey: 'id' })
    project: Project



}
export default () => projectCategory
