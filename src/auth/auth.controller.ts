import { Body, Controller, Post } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LocalSignupDto } from './dto/local-signup.dto';

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
}
