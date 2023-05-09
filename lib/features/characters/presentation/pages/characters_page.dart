import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../state/character_list.dart';
import '../widgets/character_filter_modal.dart';
import '../widgets/character_list_tile.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<StatefulWidget> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  final _characterList = CharacterList();
  final _textEditingController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void initState() {
    _characterList.loadCharacters();
    _scrollController.addListener(() {
      if (!_characterList.listIsFullyLoaded &&
          _characterList.loadCharactersFuture?.status == FutureStatus.fulfilled &&
          _scrollController.position.extentAfter < 160) {
        _characterList.loadCharacters();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        actions: [
          Observer(
            builder: (context) => IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CharacterFilterModal(
                    filterParams: _characterList.filterParams,
                    onFilterParamsUpdated: _characterList.updateFilterParams,
                  ),
                  useRootNavigator: false,
                );
              },
              icon: Icon(
                Icons.filter_alt_rounded,
                color: _characterList.filtersAreSet ? Colors.yellow : null,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: TextFormField(
              controller: _textEditingController,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Filter by character name',
                suffixIcon: IconButton(
                  onPressed: () {
                    _textEditingController.clear();
                    _characterList.setSearchByName('', applyDebounce: false);
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
              onChanged: _characterList.setSearchByName,
            ),
          ),
          Expanded(
            child: Observer(
              builder: (context) {
                return CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => CharacterListTile(
                          character: _characterList.characters[index],
                        ),
                        childCount: _characterList.characters.length,
                      ),
                    ),
                    if (_characterList.charactersAreLoading)
                      SliverToBoxAdapter(
                        child: Container(
                          height: 150,
                          alignment: Alignment.center,
                          child: const CircularProgressIndicator(strokeWidth: 3),
                        ),
                      ),
                    if (!_characterList.charactersAreLoading &&
                        _characterList.listIsFullyLoaded &&
                        _characterList.characters.isNotEmpty)
                      SliverToBoxAdapter(
                        child: ListTile(
                          title: Text('Total items: ${_characterList.characters.length}'),
                        ),
                      ),
                    if (!_characterList.charactersAreLoading && _characterList.characters.isEmpty)
                      const SliverToBoxAdapter(
                        child: ListTile(
                          title: Text('No items found'),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
