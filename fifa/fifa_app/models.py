from django.db import models
from django.utils.html import format_html
from django import forms
import json, os
# Create your models here.
class Team(models.Model):
    id_team = models.AutoField(verbose_name='ID', primary_key= True)
    team_name = models.CharField(max_length=20, verbose_name = 'Nombre', help_text = 'Ej: Mexico')
    team_flag = models.ImageField(upload_to = 'media', verbose_name = 'Bandera nacional')
    team_shield = models.ImageField(upload_to = 'media', verbose_name = 'Escudo')
    
    def show_flag(self):
        return format_html('<img src={} width="50" style="border-radius: 10px; border: 2px solid #000; margin:0 10px;"/> ', self.team_flag.url)
    
    def show_shield(self):
        return format_html('<img src={} width="50"/> ', self.team_shield.url)
    
    def __str__(self):
        return self.team_name
    
    class Meta:
        verbose_name = "Equipos"
        verbose_name_plural = "Equipos"
        db_table = "teams"

class Position(models.Model):
    id_position = models.AutoField(primary_key=True, verbose_name = 'Id')
    position_name = models.CharField(max_length = 5, verbose_name= 'Abreviación', help_text = 'Ej: PO')
    position_description = models.CharField(max_length=50, verbose_name='Descripción', help_text = 'Ej: Portero')
    def __str__(self):
        return self.position_name
    
    class Meta:
        verbose_name = "Posicion"
        verbose_name_plural = "Posiciones"
        db_table = "positions"


class Coach(models.Model):
    ROLES = (
        ("1",'Técnico'),
        ("2",'Asistente'),
        ("3",'Médico'),
        ("4",'Preparador')
    )               
       
    id_coach = models.AutoField(primary_key = True, verbose_name="ID")
    name = models.CharField(max_length = 30, verbose_name = "Nombre")
    date_of_birth = models.DateField(verbose_name='Fecha de nacimiento')
    nationality = models.CharField(max_length = 50)
    role = models.CharField(max_length = 15, choices=ROLES, default = 'Técnico')
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = "Tecnico"
        verbose_name_plural = "Tecnicos"
        db_table = "coach"

class Player(models.Model):
    ES_TITULAR = (
        ("1",'Si'),
        ("2",'No')
    )                   
    id_player= models.AutoField(primary_key = True, verbose_name="ID")
    name = models.CharField(max_length = 30, verbose_name = "Nombre")
    last_name = models.CharField(max_length = 30, verbose_name = "Apellido")
    date_of_birth = models.DateField(verbose_name='Fecha de nacimiento')
    photo = models.ImageField(upload_to = 'media', verbose_name = 'Foto')
    shirt_number = models.IntegerField(verbose_name = 'Número de camiseta')
    position = models.ForeignKey(Position,on_delete = models.CASCADE, verbose_name='Posición')
    initial_player = models.CharField(max_length = 20, choices=ES_TITULAR, verbose_name = "Titular")
    team = models.ForeignKey(Team,on_delete = models.CASCADE, verbose_name='Seleccion nacional')
    
    def __str__(self):
        return self.name
    
    def show_photo(self):
        return format_html('<img src={} width="50" style="border-radius: 10px; border: 2px solid #000; margin:0 10px;"/> ', self.photo.url)
    
    class Meta:
        verbose_name = "Jugador"
        verbose_name_plural = "Jugadores"
        db_table = "players"