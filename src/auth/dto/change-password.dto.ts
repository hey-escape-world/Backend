import { IsString } from 'class-validator';

export class ChangePasswordDto {
  @IsString()
  phone: string;

  @IsString()
  password: string;
}
