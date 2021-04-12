import { Column, AutoIncrement, Model, NotNull, PrimaryKey, DataType, Table, BelongsTo } from 'sequelize-typescript'
import { Role } from './role'

@Table({
  modelName: 'admin',
})
export class Admin extends Model<Admin>{
  @AutoIncrement
  @PrimaryKey
  @Column({
    type: DataType.INTEGER(10)
  })
  public id: number
  
  @NotNull
  @Column({
    type:DataType.STRING(255)
  })
  public username: string


  @NotNull
  @Column({
    type:DataType.CHAR(32)
  })
  public password: string
  

  @Column({
    type:DataType.CHAR(255)
  })
  public mobile: string

  @Column({
    type:DataType.STRING(255)
  })
  public email: string

  @Column({
    type:DataType.TINYINT(1)
  })
  public status: number
  
  @Column({
    type: DataType.INTEGER(11)
  })
  public role_id:number

  @Column({
    type: DataType.INTEGER(11)
  })
  public add_time:number
  

  @Column({
    type: DataType.TINYINT(1)
  })
  public is_super:number


  @Column({
    type: DataType.INTEGER(11)
  })
  public last_login: number
  
  
  @BelongsTo(() => Role, { foreignKey: 'role_id', targetKey: 'id' })
  role: Role[]
}
export default () => Admin 