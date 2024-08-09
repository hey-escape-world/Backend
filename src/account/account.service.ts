import { HttpException, Inject, Injectable, forwardRef } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Account } from 'src/entities/account.entity';
import { Repository } from 'typeorm';
import { CreateAccountDto } from './dto/create-account.dto';
import { AppService } from 'src/app.service';
import { randomNum } from 'src/utils/random-nickname';
import { CheckCertificationDto } from './dto/check-certification.dto';

@Injectable()
export class AccountService {
  constructor(
    @InjectRepository(Account)
    private readonly accountRepository: Repository<Account>,
    @Inject(forwardRef(() => AppService))
    private readonly appService: AppService,
  ) {}

  async findUserByPhone(phone: string): Promise<Account> {
    return this.accountRepository.findOne({ where: { phone: phone } });
  }

  async createAccount(dto: CreateAccountDto): Promise<Account> {
    try {
      const account = this.accountRepository.create();
      account.phone = dto.phone;
      account.password = dto.password;
      account.providerType = 'LOCAL';
      account.providerId = dto.providerId || null;
      account.user_id = dto.user_id || null;
      await this.accountRepository.save(account);
      return account;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }

  async certification(phone: string): Promise<number> {
    try {
      const certificationNumber = randomNum();
      await this.appService.saveCache(phone, certificationNumber);
      return certificationNumber;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }

  async checkCertification(
    phone: string,
    dto: CheckCertificationDto,
  ): Promise<boolean> {
    try {
      const cacheCertificationNumber = await this.appService.getCache<number>(
        phone,
      );
      if (!cacheCertificationNumber) {
        throw new HttpException('Certification number does not exist', 400);
      }
      return cacheCertificationNumber === dto.certification_num ? true : false;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }

  async updatePassword(phone: string, password: string): Promise<boolean> {
    try {
      const account = await this.findUserByPhone(phone);
      if (!account) {
        throw new HttpException('Phone number does not exist', 400);
      }
      account.password = password;
      await this.accountRepository.save(account);
      return true;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }
}
