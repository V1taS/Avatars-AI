import ProjectDescription

let workspace = Workspace(
  name: "Avatars",
  projects: ["./**"],
  generationOptions: .options(autogeneratedWorkspaceSchemes: .disabled)
)
