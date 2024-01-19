import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/Application/Search/search_bloc.dart';
import 'package:instagram_clone/Presentation/Widgets/search_field.dart';

// this screen is came whenever the user click the textfield
//for searching the user.
class SearchUserScreen extends StatelessWidget {
  const SearchUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          title: const SearchField(
            textInputType: TextInputType.text,
          ),
        ),
        body: BlocBuilder<SearchBloc, SearchState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: state.filteredUser.isEmpty
                      ? const Center(
                          child: Text('Searched user unavailable'),
                        )
                      : ListView.builder(
                          itemCount: state.filteredUser.length,
                          itemBuilder: (context, index) {
                            final user = state.filteredUser[index];

                            return ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(user.photoUrl),
                              ),
                              title: Text(user.username),
                              trailing: const Icon(Icons.close),
                            );
                          },
                        ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
