import { Column, AutoIncrement, Model, NotNull, PrimaryKey, DataType, Table } from 'sequelize-typescript'

@Table({
    modelName: 'role_access',
})
export class RoleAccess extends Model<RoleAccess>{
    @AutoIncrement
    @PrimaryKey
    @Column({
        type: DataType.INTEGER(10),
    })
    public id: number

    @NotNull
    @Column({
      type: DataType.INTEGER(11),
      comment: '权限id'
    })
    public access_id: number

    @NotNull
    @Column({
        type: DataType.INTEGER(11),
        comment: '角色id'
    })
    public role_id: number

}
export default () => RoleAccess