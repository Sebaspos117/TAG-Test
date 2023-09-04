import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  private _token: string | null = null;

  setToken(token: string) {
    this._token = token;
  }

  getToken(): string | null {
    return this._token;
  }
}
