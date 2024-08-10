import { IsNumber, IsString } from 'class-validator';

export class CheckCertificationDto {
  @IsNumber()
  certification_num: number;
}
