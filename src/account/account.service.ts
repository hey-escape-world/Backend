import { HttpException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Account } from 'src/entities/account.entity';
import { Repository } from 'typeorm';
import { CreateAccountDto } from './dto/create-account.dto';

@Injectable()
export class AccountService {
  constructor(
    @InjectRepository(Account)
    private readonly accountRepository: Repository<Account>,
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
}
