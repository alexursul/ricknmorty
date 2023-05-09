import 'package:flutter/material.dart';
import '../../domain/models/character.dart';
import '../../domain/usecases/load_characters.dart';

class CharacterFilterModal extends StatefulWidget {
  final LoadCharactersParams filterParams;
  final void Function(LoadCharactersParams filterParams) onFilterParamsUpdated;

  const CharacterFilterModal({
    required this.filterParams,
    required this.onFilterParamsUpdated,
    super.key,
  });

  @override
  State<CharacterFilterModal> createState() => _CharacterFilterModalState();
}

class _CharacterFilterModalState extends State<CharacterFilterModal> {
  CharacterGender? _selectedGender;
  CharacterStatus? _selectedStatus;
  String? _speciesLike;

  @override
  void initState() {
    _selectedGender = widget.filterParams.gender;
    _selectedStatus = widget.filterParams.status;
    _speciesLike = widget.filterParams.speciesLike;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: Text('Filter characters')),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
          ),
        ],
      ),
      contentPadding: const EdgeInsets.only(top: 10, bottom: 5),
      titlePadding: const EdgeInsets.only(left: 16, top: 20),
      children: [
        ListTile(
          title: TextFormField(
            textAlignVertical: TextAlignVertical.center,
            initialValue: _speciesLike,
            decoration: const InputDecoration(hintText: 'Species contains'),
            onChanged: (speciesLike) {
              _speciesLike = speciesLike;
            },
          ),
        ),
        ListTile(
          title: DropdownButton<CharacterGender>(
            hint: const Text('Gender'),
            value: _selectedGender,
            isExpanded: true,
            items: List<DropdownMenuItem<CharacterGender>>.generate(
              CharacterGender.values.length,
              (index) => DropdownMenuItem<CharacterGender>(
                child: Text(CharacterGender.values[index].value),
                value: CharacterGender.values[index],
              ),
            ),
            onChanged: (gender) {
              setState(() {
                _selectedGender = gender;
              });
            },
          ),
        ),
        ListTile(
          title: DropdownButton<CharacterStatus>(
            hint: const Text('Status'),
            value: _selectedStatus,
            isExpanded: true,
            items: List<DropdownMenuItem<CharacterStatus>>.generate(
              CharacterStatus.values.length,
              (index) => DropdownMenuItem<CharacterStatus>(
                child: Text(CharacterStatus.values[index].value),
                value: CharacterStatus.values[index],
              ),
            ),
            onChanged: (status) {
              setState(() {
                _selectedStatus = status;
              });
            },
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {
                  widget.onFilterParamsUpdated(const LoadCharactersParams());
                  Navigator.of(context).pop();
                },
                child: const Text('Reset'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  widget.onFilterParamsUpdated(widget.filterParams.copyWith(
                    gender: _selectedGender,
                    status: _selectedStatus,
                    speciesLike: _speciesLike,
                  ));
                  Navigator.of(context).pop();
                },
                child: const Text('Apply'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
