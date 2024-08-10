import { registerAs } from '@nestjs/config';
import { config as dotenvConfig } from 'dotenv';
import { DataSource, DataSourceOptions } from 'typeorm';

dotenvConfig({
  path: './.env',
});

const config = {
  type: 'mysql',
  host: process.env.HEY_HOST,
  port: Number(process.env.HEY_PORT),
  username: process.env.HEY_USER,
  password: process.env.HEY_PASSWORD,
  database: process.env.HEY_DATABASE,
  entities: ['dist/**/*.entity{.ts,.js}'],
  migrations: ['dist/migrations/*{.ts,.js}'],
  autoLoadEntities: true,
  synchronize: true,
  logging: true,
};

export default registerAs('typeorm', () => config);
export const connectionSource = new DataSource(config as DataSourceOptions);
