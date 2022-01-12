import 'package:flutter/material.dart';
import 'package:valo_vikia/agent_item.dart';
import 'package:valo_vikia/data/agent_strings.dart';
import 'package:valo_vikia/models/agent.dart';

class AgentList extends StatelessWidget {
  late List<Agent> agents;
  AgentList() {
    agents = getAgentsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ValoVikia'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return AgentItem(agentInfo: agents[index]);
          },
          itemCount: agents.length,
        ),
      ),
    );
  }

  List<Agent> getAgentsData() {
    List<Agent> tempAgents = [];

    for (int i = 0; i < 18; i++) {
      var agentName = Strings.AGENTS_NAME[i];
      var agentType = Strings.AGENTS_TYPE[i];
      var agentSpec = Strings.AGENTS_SPEC[i];
      var agentAvatar = '${i + 1}avatar.jpg';
      var agentWallpaper = '${i + 1}LG.png';

      Agent newAgent =
          Agent(agentName, agentType, agentSpec, agentAvatar, agentWallpaper);
      tempAgents.add(newAgent);
    }

    return tempAgents;
  }
}
