import { EggAppConfig, PowerPartial } from 'egg';

export default () => {
  const config: PowerPartial<EggAppConfig> = {
    /** 配置跨域 */
    cors: {
      origin: 'http://127.0.0.1:3000',
      allowMethods: 'GET,POST,DELETE,PUT,OPTIONS',
      credentials: true
    },
    /* 关闭 csrf */
    security: {
      csrf: {
        enable: false
      },
      domainWhiteList: ["*"]
    },
    /** sequelize 配置 */
    sequelize: {
      dialect: 'mysql',
      host: '127.0.0.1',
      port: 3306,
      username: 'root',
      password: 'root',
      database: 'starbeam',
      timezone: '+08:00',
      // 数据库连接池
      pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
      },
      define: {
        // 强制表名称等于模型名
        freezeTableName: true,
        timestamps: false,
      }

    }
  };
  return config;
};
