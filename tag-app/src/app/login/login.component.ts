import { Component } from '@angular/core';
import { ApiService } from '../api.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
})
export class LoginComponent {
  username1: string = '';
  password1: string = '';
  usname: string = '';
  nameapi: string = '';
  userData: {
    name: string;
    password: string;
    user_id: number;
    username: string;
  }[] = [];
  userNotFound: boolean = false; // Initialize the flag

  constructor(private apiService: ApiService) {}

  submitForm() {
    // Reset the flag each time the form is submitted
    this.userNotFound = false;

    // Make the GET request using the ApiService
    this.apiService.fetchData().subscribe(
      (response: any) => {
        // Handle the response data as needed
        this.userData = response;

        // Check if the entered username exists in the response data
        const matchedUser = this.userData.find(
          (user) => user.username === this.username1
        );

        if (matchedUser) {
          this.usname = matchedUser.name;
          this.nameapi = typeof matchedUser.name;
        } else {
          this.usname = 'User not Found';
        }
      },
      (error: any) => {
        console.error('Error:', error);
      }
    );
  }
}
