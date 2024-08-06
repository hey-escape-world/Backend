import { HttpException, Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { User } from 'src/entities/user.entity';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';

@Injectable()
export class UserService {
  constructor(
    @InjectRepository(User)
    private readonly userRepository: Repository<User>,
  ) {}

  async validateUser(payload: any): Promise<any> {
    const result = await this.userRepository
      .createQueryBuilder('user')
      .where({ id: payload.id })
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
      user.providerType = dto.providerType || 'LOCAL';
      await this.userRepository.save(user);
      return user;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }
}
