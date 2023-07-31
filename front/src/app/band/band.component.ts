import { Component, OnInit } from '@angular/core';
import { BandService } from '../services/band.service';
import { Band } from '../models/band.model';

@Component({
  selector: 'app-band',
  templateUrl: './band.component.html',
  styleUrls: ['./band.component.css']
})
export class BandComponent implements OnInit {
  // @ts-ignore
  bands: Band[];

  constructor(private bandService: BandService) { }

  ngOnInit(): void {
    this.bandService.getBands().subscribe(bands => {
      // @ts-ignore
      this.bands = bands['hydra:member'];
    });
  }
  deleteBand(id: string): void {
    this.bandService.deleteBand(id).subscribe(() => {
      this.bands = this.bands.filter(band => band['@id'] !== id);
    });
  }
  updateBand(band: Band): void {
    band.Members = Number(band.Members);
    band.StartYear = Number(band.StartYear);
    band.EndYear = Number(band.EndYear);
    this.bandService.updateBand(band).subscribe();
  }
}
