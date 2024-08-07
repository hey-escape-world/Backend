import { IsString } from 'class-validator';

export class LocalLoginDto {
  @IsString()
  phone: string;

  @IsString()
  password: string;
}
