<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EmpleadoResource\Pages;
use App\Filament\Resources\EmpleadoResource\RelationManagers;
use App\Models\Empleado;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class EmpleadoResource extends Resource
{
    protected static ?string $model = Empleado::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('nombre')
                    ->required()
                    ->maxLength(50),
                Forms\Components\TextInput::make('apellido-p')
                    ->required()
                    ->maxLength(50),
                Forms\Components\TextInput::make('apellido-m')
                    ->required()
                    ->maxLength(50),
                Forms\Components\TextInput::make('sueldo')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('cargo')
                    ->required()
                    ->maxLength(50),
                Forms\Components\TextInput::make('carnet')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('edad')
                    ->required()
                    ->numeric(),
                Forms\Components\TextInput::make('sexo')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nombre')
                    ->searchable(),
                Tables\Columns\TextColumn::make('apellido-p')
                    ->searchable(),
                Tables\Columns\TextColumn::make('apellido-m')
                    ->searchable(),
                Tables\Columns\TextColumn::make('sueldo')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('cargo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('carnet')
                    ->numeric()
                    ->sortable(),
                 Tables\Columns\TextColumn::make('edad')
                    ->numeric()
                    ->sortable(),
                Tables\Columns\TextColumn::make('sexo')
                    ->searchable(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListEmpleados::route('/'),
            'create' => Pages\CreateEmpleado::route('/create'),
            'view' => Pages\ViewEmpleado::route('/{record}'),
            'edit' => Pages\EditEmpleado::route('/{record}/edit'),
        ];
    }
}
