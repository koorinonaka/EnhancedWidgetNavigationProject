// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;
using System.Collections.Generic;

public class EWNProjectTarget : TargetRules
{
	public EWNProjectTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		DefaultBuildSettings = BuildSettingsVersion.Latest;
		ExtraModuleNames.AddRange(new string[] { "EWNProject" });
		
		IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
	}
}
