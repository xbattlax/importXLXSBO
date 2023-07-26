// Example for login.component.ts
import { Component } from '@angular/core';
import { UserService } from '../user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  // @ts-ignore
  email: string;
  // @ts-ignore
  password: string;

  constructor(private userService: UserService) { }

  onLogin(): void {
    this.userService.login(this.email, this.password).subscribe(response => {
      console.log(response);
    });
  }
}
