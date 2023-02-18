import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World! / nestjs + github-action + aws push worked successefully!!!';
  }
}
