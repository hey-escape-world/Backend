import { IsNumber, IsOptional, IsString } from 'class-validator';

export class CreateAccountDto {
  @IsString()
  phone: string;

  @IsString()
  password: string;

  @IsOptional()
  @IsString()
  providerType?: string;

  @IsOptional()
  @IsString()
  providerId?: string;

  @IsNumber()
  user_id: number;
}
