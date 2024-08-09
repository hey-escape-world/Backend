import { IsNumber, IsString } from 'class-validator';

export class CheckCertificationDto {
  @IsString()
  certification_num: number;
}
