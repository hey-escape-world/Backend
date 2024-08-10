import { Body, Controller, Post, Put, UseGuards } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LocalSignupDto } from './dto/local-signup.dto';
import { ResetPasswordDto } from './dto/reset-password.dto';
import { AuthGuard } from './jwt/jwt.guard';
import { CurrentUser } from 'src/common/decorator/user.decorator';
import { User } from 'src/entities/user.entity';
import { Payload } from 'src/common/interface/user.interface';
import { ChangePasswordDto } from './dto/change-password.dto';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService) {}

  @Post('signup')
  localSignup(@Body() dto: LocalSignupDto) {
    return this.authService.localSignup(dto);
  }

  @Post('login')
  localLogin(@Body() dto: LocalSignupDto) {
    return this.authService.localLogin(dto);
  }

  @Post('reset-password')
  resetPassword(@Body() dto: ResetPasswordDto) {
    return this.authService.resetPassword(dto);
  }

  @Put('change-password')
  @UseGuards(AuthGuard)
  changePassword(@Body() dto: ChangePasswordDto, @CurrentUser() user: Payload) {
    console.log(user, 'user');
    return this.authService.changePassword(dto, user);
  }
}
