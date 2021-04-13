import { Table, Column, PrimaryKey, AutoIncrement, Model, DataType, HasMany } from 'sequelize-typescript'
import { Opus } from './opus'

@Table({
    modelName: 'opusCategory'
})
export class opusCategory extends Model<opusCategory>{
    @PrimaryKey
    @AutoIncrement
    @Column({
        type: DataType.INTEGER(10)
    })
    public id: number

    @Column({
        type: DataType.STRING(10)
    })
    public title: number

    @HasMany(() => Opus, { foreignKey: 'cid', sourceKey: 'id' })
    opus: Opus[]
}
export default () => opusCategory