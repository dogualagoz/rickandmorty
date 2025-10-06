import 'package:flutter/material.dart';
import 'package:rickandmorty/views/widgets/character_cardview.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: Column(
            children: [
              _searchInputWidget(context),
              const CharacterCardview(
                image:
                    'https://rickandmortyapi.com/api/character/avatar/424.jpeg',
                name: 'Rick Sanchez',
                origin: 'Earth (C-137)',
                status: 'Yaşıyor',
                type: 'İnsan',
              ),
              const CharacterCardview(
                image:
                    'https://rickandmortyapi.com/api/character/avatar/424.jpeg',
                name: 'Rick Sanchez',
                origin: 'Earth (C-137)',
                status: 'Yaşıyor',
                type: 'İnsan',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _searchInputWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Karakterlerde Ara',
          labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface),
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ),
      ),
    );
  }
}
