import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { CommonModule } from '@angular/common';
import { MatMenuModule, MatButtonModule, MatIconModule, MatCardModule, MatToolbarModule,
  MatGridListModule, MatInputModule} from '@angular/material';
import 'hammerjs';

@NgModule({
  imports: [
    CommonModule,
    MatMenuModule,
    MatButtonModule,
    BrowserModule,
    BrowserAnimationsModule,
    MatMenuModule,
    MatButtonModule,
    MatIconModule,
    MatCardModule,
    MatToolbarModule,
    MatInputModule,
    MatGridListModule
  ],
  declarations: [],
  exports: [
    MatMenuModule,
    MatButtonModule,
    BrowserModule,
    BrowserAnimationsModule,
    MatMenuModule,
    MatButtonModule,
    MatIconModule,
    MatCardModule,
    MatToolbarModule,
    MatInputModule,
    MatGridListModule
  ]
})
export class AngularComponentsModule { }
