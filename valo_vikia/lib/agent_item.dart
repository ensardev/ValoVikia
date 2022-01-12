import 'package:flutter/material.dart';
import 'package:valo_vikia/models/agent.dart';

class AgentItem extends StatelessWidget {
  final Agent agentInfo;
  const AgentItem({required this.agentInfo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Image.asset(
          "images/" + agentInfo.agentAvatar,
        ),
        title: Text(
          agentInfo.agentName,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.red.shade900,
          ),
        ),
        subtitle: Text(agentInfo.agentType),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.red.shade900,
        ),
      ),
    );
  }
}
