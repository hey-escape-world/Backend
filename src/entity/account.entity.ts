import { Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({ name: 'account' })
export class Account {
  @PrimaryGeneratedColumn()
  account_id: number;
}
