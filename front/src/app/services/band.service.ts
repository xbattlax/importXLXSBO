

import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Band } from '../models/band.model';

@Injectable({
  providedIn: 'root'
})
export class BandService {
  private apiUrl = 'http://localhost:8000';

  constructor(private http: HttpClient) { }

  getBands(): Observable<Band[]> {
    return this.http.get<Band[]>(this.apiUrl+'/api/bands');
  }
  deleteBand(id: string): Observable<any> {
    return this.http.delete(`${this.apiUrl}`+id);
  }
  updateBand(band: Band): Observable<any> {
    console.log(band);
    return this.http.put(`${this.apiUrl}`+band['@id'], band);
  }
  uploadFile(file: File) {
    const formData = new FormData();
    formData.append('file', file);
    return this.http.post('http://127.0.0.1:8000/api/band/from_xlsx', formData);
  }
}
