import { HttpException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from 'src/entities/user.entity';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { ProviderType } from 'src/utils/provider.type';
import { CheckNicknameDto } from './dto/check-nickname.dto';

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
  ) {}

  async validateUser(payload: any): Promise<any> {
    const result = await this.userRepository
      .createQueryBuilder('user')
      .where({ user_id: payload.user.user_id })
      .select('*')
      .getRawOne();
    return result;
  }

  async createUser(dto: CreateUserDto): Promise<User> {
    try {
      const user = this.userRepository.create();
      user.image = '';
      user.nickname = dto.nickname;
      user.providerId = dto.providerId || null;
      user.providerType = dto.providerType || ('LOCAL' as ProviderType);
      await this.userRepository.save(user);
      return user;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }

  async findUserByUserId(user_id: number): Promise<User> {
    try {
      const user = await this.userRepository.findOne({
        where: { user_id },
      });
      return user;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }

  async checkNickname(dto: CheckNicknameDto): Promise<boolean> {
    try {
      const user = await this.userRepository.findOne({
        where: { nickname: dto.nickname },
      });
      return user ? false : true;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }
}
