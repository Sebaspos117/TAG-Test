import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ApiService {
  private apiUrl = 'http://127.0.0.1:5000/users';

  constructor(private http: HttpClient) {}

  fetchData() {
    return this.http.get(this.apiUrl);
  }
}
