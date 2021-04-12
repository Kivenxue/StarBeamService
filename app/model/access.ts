import { Column, AutoIncrement, Model, NotNull, PrimaryKey, DataType, Table ,HasMany} from 'sequelize-typescript'

@Table({
  modelName: 'access',
})
export class Access extends Model<Access>{
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
  public module_name: string


  @NotNull
  @Column({
    type:DataType.TINYINT(1)
  })
  public type: number
  

  @Column({
    type:DataType.STRING(255)
  })
  public action_name: string

  @Column({
    type:DataType.INTEGER(1)
  })
  public url: number

  @Column({
    type:DataType.INTEGER(1)
  })
  public module_id: number
  
  @Column({
    type: DataType.INTEGER(11)
  })
  public sort:number

  @Column({
    type: DataType.STRING(255)
  })
  public description:string
  

  @Column({
    type: DataType.TINYINT(1)
  })
  public status:number


  @Column({
    type: DataType.INTEGER(11)
  })
  public add_time: number
  
  @HasMany(() => Access, { foreignKey: 'module_id'})
  access: Access[]
  
}
export default () => Access 