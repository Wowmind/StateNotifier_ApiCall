import 'package:connectionn/logic/provider.dart';
import 'package:connectionn/logic/user_freeze.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod State'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Expanded(child: First()),
            const SizedBox(height: 30,),
            Mybtn(),
          ],
        ),
      ),
    );

  }
}

class First extends ConsumerWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final  UsersProvider = ref.watch(UserNotifierProvider);
    return  UsersProvider.when(
        initial: ()=> const Center(
            child: Text('Press me')),
        loading: ()=>const  Center(
            child: CircularProgressIndicator()
        ),
        loaded: (UsersProvider)=> ListView.builder(
          itemCount: UsersProvider.data?.length,
          itemBuilder: (context, index){
            return  ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('${UsersProvider.data?[index].avatar}'),
                ),
                title: Text('${UsersProvider.data?[index].firstName}'),
              subtitle: Text('${UsersProvider.data?[index].lastName}'),
              trailing: Text('${UsersProvider.data?[index].id}'),
              );

          },
        ),
        error: (error)=>const Center(
            child:  Text('Error',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)),
    );
  }
}

class Mybtn extends ConsumerWidget {
  const Mybtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(UserNotifierProvider);
    return ElevatedButton(onPressed: !state.isLoading? (){
      ref.read(UserNotifierProvider.notifier).getData();
    }: null, child: const Text('Press'));
  }
}



