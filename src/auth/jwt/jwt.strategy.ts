import { Strategy, ExtractJwt } from 'passport-jwt';
import { AuthService } from './../auth.service';
import {
  Injectable,
  HttpException,
  UnauthorizedException,
} from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { Response } from 'express';
import { UserService } from 'src/user/user.service';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(private readonly userService: UserService) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      secretOrKey: process.env.SECRETKEY,
      ignoreExpiration: false,
    });
  }

  async validate(payload: any) {
    console.log(payload, 'payload');
    const user = await this.userService.validateUser(payload);
    if (!user) {
      throw new HttpException('not find user', 400);
    }
    return payload;
  }
}
