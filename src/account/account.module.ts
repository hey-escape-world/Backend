import { Module, forwardRef } from '@nestjs/common';
import { AccountService } from './account.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Account } from 'src/entities/account.entity';
import { AuthModule } from 'src/auth/auth.module';
import { UserModule } from 'src/user/user.module';
import { AccountController } from './account.controller';

@Module({
  imports: [
    TypeOrmModule.forFeature([Account]),
    forwardRef(() => AuthModule),
    UserModule,
  ],
  providers: [AccountService],
  exports: [AccountService],
  controllers: [AccountController],
})
export class AccountModule {}
