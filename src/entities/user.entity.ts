import { Column, Entity, OneToMany, PrimaryGeneratedColumn } from 'typeorm';
import { Account } from './account.entity';
import { ProviderType } from 'src/utils/provider.type';

@Entity({ name: 'user' })
export class User {
  @PrimaryGeneratedColumn()
  user_id: number;

  @Column({ type: 'varchar', nullable: false })
  nickname: string;

  @Column({ type: 'varchar', nullable: false })
  image: string;

  @Column({ type: 'varchar', default: 'LOCAL' })
  providerType: ProviderType;

  @Column({ type: 'varchar', nullable: true })
  providerId?: string;

  @OneToMany(() => Account, (account) => account.user)
  accounts: Account[];
}
