import { Body, Controller, Get, Post, Query } from '@nestjs/common';
import { AccountService } from './account.service';
import { CheckCertificationDto } from './dto/check-phone.dto';

@Controller('account')
export class AccountController {
  constructor(private readonly accountService: AccountService) {}

  @Post('phone/certification')
  certification(@Query('phone') phone: string) {
    return this.accountService.certification(phone);
  }

  @Post('phone/check')
  checkCertification(
    @Body() dto: CheckCertificationDto,
    @Query('phone') phone: string,
  ) {
    return this.accountService.checkCertification(phone, dto.certificationNum);
  }
}
