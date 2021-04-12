import { Column, AutoIncrement, Model, NotNull, PrimaryKey, DataType, Table } from 'sequelize-typescript'

@Table({
  modelName: 'role',
})
export class Role extends Model<Role>{
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
  public title: string

  @NotNull
  @Column({
    type:DataType.STRING(255)
  })
  public description: string

  @Column({
    type:DataType.TINYINT(1)
  })
  public status: number
  
  @Column({
    type: DataType.INTEGER(11)
  })
  public addTime:number

  
}
export default () => Role 