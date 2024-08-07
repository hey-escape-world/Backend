import { CACHE_MANAGER } from '@nestjs/cache-manager';
import { HttpException, Inject, Injectable } from '@nestjs/common';
import { Cache } from 'cache-manager';

@Injectable()
export class AppService {
  constructor(@Inject(CACHE_MANAGER) private cacheManager: Cache) {}
  getHello(): string {
    return 'Hello World!';
  }

  async saveCache(name: string, value: any) {
    try {
      const serializedValue = JSON.stringify(value);
      return await this.cacheManager.set(name, serializedValue);
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }

  async getCache<T>(name: string): Promise<T | null> {
    try {
      const serializedValue = await this.cacheManager.get<string>(name);
      if (serializedValue) {
        return JSON.parse(serializedValue) as T;
      }
      return null;
    } catch (error) {
      console.log(error);
      throw new HttpException('Internal server error', 500);
    }
  }
}
