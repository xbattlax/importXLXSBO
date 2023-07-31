import { Component } from '@angular/core';
import { BandService } from '../services/band.service';
import { catchError } from 'rxjs/operators';
import { of } from 'rxjs';

@Component({
  selector: 'app-upload',
  templateUrl: './upload.component.html',
  styleUrls: ['./upload.component.css']
})
export class UploadComponent {
  selectedFile: File | null = null;
  response: string = '';

  constructor(private bandService: BandService) { }

  onFileSelected(event: any) {
    this.selectedFile = event.target.files[0];
  }

  onUpload() {
    if (this.selectedFile) {
      this.bandService.uploadFile(this.selectedFile).pipe(
        catchError(error => {
          // If an error occurs, store the error message
          this.response = 'Error: ' + error.message;
          // Return an empty observable to complete the stream
          return of(null);
        })
      ).subscribe(response => {
        // If the request is successful, store a success message
        this.response = 'Success: File uploaded successfully!';
      });
    }
  }
}
