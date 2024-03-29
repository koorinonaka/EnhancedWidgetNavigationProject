// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;
using System.Collections.Generic;

public class EWNProjectEditorTarget : TargetRules
{
	public EWNProjectEditorTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		DefaultBuildSettings = BuildSettingsVersion.Latest;
		ExtraModuleNames.AddRange(new string[] { "EWNProject" });

		IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
	}
}
