import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {BandComponent} from "./band/band.component";
import {UploadComponent} from "./upload/upload.component";

const routes: Routes = [
  { path: '', component: BandComponent },
  { path: 'upload', component: UploadComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
