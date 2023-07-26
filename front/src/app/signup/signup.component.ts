// signup.component.ts
import { Component } from '@angular/core';
import { UserService } from '../user.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent {

  // @ts-ignore
  email: string;
  // @ts-ignore
  password: string;

  constructor(private userService: UserService) { }

  onSignup(): void {
    this.userService.signup(this.email, this.password).subscribe(response => {
      console.log(response);
    }, error => {
      console.log(error);
    });
  }
}
