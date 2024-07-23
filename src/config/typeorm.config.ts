import { registerAs } from '@nestjs/config';
import { config as dotenvConfig } from 'dotenv';
import { DataSource, DataSourceOptions } from 'typeorm';

dotenvConfig({
  path:
    process.env.NODE_ENV === 'prod'
      ? './environment/.env.prod'
      : process.env.NODE_ENV === 'dev'
      ? './environment/.env.dev'
      : './environment/.env.local',
});

const config = {
  type: 'mysql',
  host: process.env.,
  port: Number(process.env.),
  username: process.env.,
  password: process.env.,
  database: process.env.,
  entities: ['dist/**/*.entity{.ts,.js}'],
  migrations: ['dist/migrations/*{.ts,.js}'],
  autoLoadEntities: true,
  synchronize: false,
  logging: false,
};

export default registerAs('typeorm', () => config);
export const connectionSource = new DataSource(config as DataSourceOptions);
