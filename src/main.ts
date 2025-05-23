import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const port = process.env.PORT ?? 3001;
  await app.listen(port);
  console.log(`🚀 SIEG rodando em http://localhost:${port}`);
}
void bootstrap();
