import { IsString } from 'class-validator';

export class ResetPasswordDto {
  @IsString()
  phone: string;
}
