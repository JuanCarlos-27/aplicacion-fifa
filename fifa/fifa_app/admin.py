from django.contrib import admin
from . models import Team, Position,Coach, Player

# Register your models here.

@admin.register(Team)
class TeamAdmin(admin.ModelAdmin):
    list_display = ('id_team','team_name','show_flag','show_shield')
    ordering = ('team_name',)
    search_fields = ('team_name',)
    #list_editable = ('team_name',)
    #list_filter = ()
    
@admin.register(Position)
class PositionAdmin(admin.ModelAdmin):
    list_display = ('id_position','position_name','position_description')
    ordering = ('id_position',)
    search_fields = ('position_description','position_name')

@admin.register(Coach)
class CoachAdmin(admin.ModelAdmin):
    list_display = ('id_coach','name','date_of_birth', 'role')
    ordering = ('id_coach',)
    search_fields = ('name','id_coach')
    
@admin.register(Player)
class PlayerAdmin(admin.ModelAdmin):
    list_display = ('id_player','name','last_name', 'date_of_birth', 'shirt_number', 'show_photo','position','initial_player','team')
    ordering = ('id_player',)
    search_fields = ('name','id_player')