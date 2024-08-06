import { IsString } from 'class-validator';

export class LocalSignupDto {
  @IsString()
  phone: string;

  @IsString()
  password: string;
}
