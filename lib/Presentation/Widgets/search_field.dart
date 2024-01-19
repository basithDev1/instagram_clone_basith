import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Application/Search/search_bloc.dart';
import 'package:instagram_clone/Core/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.callback, this.textInputType});
  final VoidCallback? callback;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      keyboardType: textInputType ?? TextInputType.none,
      onTap: callback,
      onChanged: (value) {
        if (value.isNotEmpty) {
          BlocProvider.of<SearchBloc>(context).add(
            SearchEvent.searchEvent(value: value),
          );
        }
      },
      placeholder: 'Search a user',
      style: const TextStyle(
        color: mobileBackgroundColor,
      ),
      placeholderStyle: const TextStyle(color: secondaryColor),
      backgroundColor: secondaryColor.withOpacity(0.2),
      prefixIcon: Icon(
        CupertinoIcons.search,
        color: mobileBackgroundColor.withOpacity(.8),
      ),
      suffixIcon: const Icon(
        CupertinoIcons.xmark_circle_fill,
        color: mobileBackgroundColor,
      ),
    );
  }
}
