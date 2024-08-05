import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { HttpExceptionFilter } from './common/exception/http-exception.filter';
import cookieParser from 'cookie-parser';
import { ValidationPipe } from '@nestjs/common';

async function bootstrap() {
  const options = {};
  // const app = await NestFactory.create(AppModule);

  const app = await NestFactory.create(AppModule, options);
  app.useGlobalFilters(new HttpExceptionFilter());

  app.enableCors({
    origin: ['*'],
    allowedHeaders: ['Content-Type', 'Authorization', 'cookies'],
    credentials: true,
  });
  app.useGlobalPipes(
    new ValidationPipe({
      forbidNonWhitelisted: true,
      transform: true,
    }),
  );

  app.useGlobalFilters(new HttpExceptionFilter());

  await app.listen(3000);
}
bootstrap();
