const request = require('supertest');
const app = require('./app'); // app.js 파일을 모듈로 내보낸 후 사용

describe('GET /', () => {
  it('should respond with Hello World!', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toBe('Hello World!');
  });
});