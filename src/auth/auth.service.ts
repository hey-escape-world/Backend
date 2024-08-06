import { ProviderType } from './../utils/provider.type';
import { HttpException, Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { UserService } from 'src/user/user.service';
import { LocalSignupDto } from './dto/local-signup.dto';
import { AccountService } from 'src/account/account.service';
import * as bcrypt from 'bcrypt';
import { randomNickname } from 'src/utils/random-nickname';

@Injectable()
export class AuthService {
  constructor(
    private readonly userService: UserService,
    private jwtService: JwtService,
    private readonly accountService: AccountService,
  ) {}
  //TODO : 병합로직 필요함
  async localSignup(dto: LocalSignupDto) {
    const existUser = await this.accountService.findUserByPhone(dto.phone);
    if (existUser) {
      throw new HttpException('Phone number already exists', 400);
    }
    const saltOrRounds = 10;
    const password = dto.password;
    const hash = await bcrypt.hash(password, saltOrRounds);
    const nickname = randomNickname();
    const userData = {
      nickname: nickname,
    };

    try {
      const user = await this.userService.createUser(userData);
      const accountData = {
        phone: dto.phone,
        password: hash,
        user_id: user.user_id,
      };
      const account = await this.accountService.createAccount(accountData);
      return account;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }
}
