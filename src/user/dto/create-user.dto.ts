import { IsIn, IsOptional, IsString } from 'class-validator';
import { ProviderType } from 'src/utils/provider.type';

export class CreateUserDto {
  @IsString()
  nickname: string;

  @IsOptional()
  @IsString()
  @IsIn(['LOCAL', 'KAKAO', 'GOOGLE'])
  providerType?: ProviderType;

  @IsOptional()
  @IsString()
  providerId?: string;
}
