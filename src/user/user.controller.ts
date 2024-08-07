import { Controller, Get, Query } from '@nestjs/common';
import { UserService } from './user.service';
import { CheckNicknameDto } from './dto/check-nickname.dto';

@Controller('user')
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Get('nickname')
  checkNickname(@Query() dto: CheckNicknameDto) {
    return this.userService.checkNickname(dto);
  }
}
