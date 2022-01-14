import 'package:flutter/material.dart';
import 'package:valo_vikia/models/agent.dart';

class AgentDetail extends StatelessWidget {
  final Agent agentModel;
  const AgentDetail({ required this.agentModel, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,          
            backgroundColor: Colors.orangeAccent.shade100,
            flexibleSpace: FlexibleSpaceBar(title: Text(agentModel.agentName, style: TextStyle(color: Colors.red.shade800)),background: Image.asset('images/'+agentModel.agentWallpaper, fit: BoxFit.cover,),),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(agentModel.agentSpec, style: Theme.of(context).textTheme.bodyText1,),
            )
          )
        ],
      ),
    );
  }
}