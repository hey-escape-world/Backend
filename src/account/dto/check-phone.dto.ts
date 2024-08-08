import { IsString } from 'class-validator';

export class CheckCertificationDto {
  @IsString()
  certificationNum: number;
}
