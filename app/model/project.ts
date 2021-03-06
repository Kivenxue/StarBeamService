import { Column, AutoIncrement, Model, NotNull, PrimaryKey, DataType, Table, HasMany, BelongsTo } from 'sequelize-typescript'
import { Banner } from './banner';
import { projectCategory } from './projectCategory';

/**
 * 一个项目对应多个分类？
 * 一个项目对应一个分类？
 * 多个项目对应多个分类？
 * 
 * student info
 * project project_category˝
 * 文章 分类
 * 
 */
@Table({
    modelName: 'project'
})
export class Project extends Model<Project>{
    @PrimaryKey
    @AutoIncrement
    @Column({
        type: DataType.INTEGER(10)
    })
    public id: number;

    @Column({
        type: DataType.TEXT
    })
    public address: string


    @Column({
        type: DataType.STRING(15)
    })
    public createTime: string

    @NotNull
    @Column({
        type: DataType.INTEGER(10)
    })
    public cid: number


    // 新增字段
    @Column({
        type: DataType.STRING(100)
    })
    public itemImg: String



    @Column({
        type: DataType.STRING(50)
    })
    public itemTitle: String


    @Column({
        type: DataType.STRING(50)
    })
    public itemSubTitle: String


    // 跟轮播图搭建关系
    @HasMany(() => Banner, { foreignKey: 'project_id', sourceKey: 'id' })
    banner: Banner

    // 跟分类搭建关系
    @BelongsTo(() => projectCategory, { foreignKey: 'cid', targetKey: 'id' })
    category: projectCategory



}
export default () => Project