class Agent {
  final String _agentName;
  final String _agentType;
  final String _agentSpec;
  final String _agentAvatar;
  final String _agentWallpaper;

  Agent(this._agentName, this._agentType, this._agentSpec, this._agentAvatar,
      this._agentWallpaper);

  @override
  String toString() {
    return '$_agentName - $_agentWallpaper';
  }
}
