# Swift Playground

## Open the project locally on your computer (Visual Studio Code + Docker)

1. Install Docker Desktop and keep it running; containers cannot start if Docker is closed.
2. In Visual Studio Code, install the **Dev Containers** extension (the green icon with ><) if you have not already.
3. Clone or download this repository to your computer and open the folder in Visual Studio Code.
4. Click the green **><** icon in the bottom-left corner (or press `⌘⇧P` and run **Dev Containers: Open Folder in Container...**).
5. Select the repository's folder; VS Code will build the container to run your code.
6. Once the build finishes, the status bar will show `Dev Container`; you can now run terminals, tests, and Git commands with the container’s Swift toolchain.

## Working with branches in GitHub Codespaces/Visual Studio Code + GitLens

### Create a new branch

1. In the Source Control view, click **Sync Changes** so your local `main` branch is current.
2. Open the GitLens side panel, expand **Branches → Remotes → origin**, and find `main`.
3. Right-click `origin/main` (or use the three-dot menu) and choose **Create Branch from 'origin/main'**.
4. Type a descriptive branch name such as `task-01`, then press **Enter**.
5. When VS Code offers to publish the branch, confirm so the remote copy is created for classmates.

### Commit and push changes

1. Edit files as needed; GitLens and the Source Control view will highlight modified items.
2. Open the Source Control view to see the **Changes** list, then hover a file and click **+** to stage it (or click **Stage All Changes** if every file is ready).
3. Click any staged file to review its diff so you understand what will be saved.
4. Type a short description of the work in the message box (for example, "Add login screen layout") and press **Commit**.
5. Click **Sync Changes** (double-arrow) or use the GitLens push button to upload the branch to the remote so everyone else can pull it.

### Switch between branches

1. Make sure the **Changes** list is empty. If it shows files, either commit them (follow the steps above) or use the **ellipsis (…) → Stash → Stash Changes** action to temporarily set them aside.
2. Click the branch indicator in the status bar or open the GitLens Branches view to see available branches.
3. Select the branch you want; VS Code will switch and GitLens will refresh the file history.
4. After switching, use **Sync Changes** to pull any remote updates before you continue working.