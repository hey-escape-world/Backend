import { ProviderType } from './../utils/provider.type';
import { HttpException, Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { UserService } from 'src/user/user.service';
import { LocalSignupDto } from './dto/local-signup.dto';
import { AccountService } from 'src/account/account.service';
import * as bcrypt from 'bcrypt';
import { randomNickname } from 'src/utils/random-nickname';
import { ResetPasswordDto } from './dto/reset-password.dto';

@Injectable()
export class AuthService {
  private readonly lowercase = 'abcdefghijklmnopqrstuvwxyz';
  private readonly uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  private readonly numbers = '0123456789';
  private readonly symbols = '!@#$%^&*_+~|}{[]></-=\\';
  constructor(
    private readonly userService: UserService,
    private jwtService: JwtService,
    private readonly accountService: AccountService,
  ) {}

  generatePassword(): string {
    let characters = this.lowercase;
    characters += this.uppercase;
    characters += this.numbers;
    characters += this.symbols;
    return Array.from({ length }, () =>
      characters.charAt(Math.floor(Math.random() * characters.length)),
    ).join('');
  }
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

  async localLogin(dto: LocalSignupDto) {
    try {
      const account = await this.accountService.findUserByPhone(dto.phone);
      if (!account) {
        throw new HttpException('Phone number does not exist', 400);
      }
      const isMatch: boolean = await bcrypt.compare(
        dto.password,
        account.password,
      );
      if (!isMatch) {
        throw new HttpException('Password does not match', 400);
      }
      const user = await this.userService.findUserByUserId(account.user_id);
      const payload = {
        account_id: account.account_id,
        user: user,
      };
      return {
        access_token: this.jwtService.sign(payload, { expiresIn: '1d' }),
      };
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }

  async resetPassword(dto: ResetPasswordDto) {
    try {
      const newPassword = this.generatePassword();

      const saltOrRounds = 10;
      const password = newPassword;
      const hash = await bcrypt.hash(password, saltOrRounds);
      await this.accountService.updatePassword(dto.phone, hash);
      return { password: newPassword };
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }
}
