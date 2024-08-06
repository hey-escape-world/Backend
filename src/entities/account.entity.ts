import { ProviderType } from 'src/utils/provider.type';
import { Column, Entity, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { User } from './user.entity';

@Entity({ name: 'account' })
export class Account {
  @PrimaryGeneratedColumn()
  account_id: number;

  @Column({ type: 'varchar', length: 12, nullable: false })
  phone: string;

  @Column({ type: 'varchar', nullable: false })
  password: string;

  @Column({ type: 'varchar', default: 'LOCAL' })
  providerType: ProviderType;

  @Column({ type: 'varchar', nullable: true })
  providerId?: string;

  @Column({ type: 'int', nullable: true })
  user_id?: number;

  @ManyToOne(() => User, (user) => user.accounts)
  user: User;
}
