# Git Merge Conflict Workflow Script

This script demonstrates how to intentionally create and resolve merge conflicts using a simple Python calculator project.

## Repository Information
- **GitHub Repository:** https://github.com/shiv4n9/GitConflicts
- **Project Name:** GitConflicts
- **Purpose:** Educational demonstration of Git merge conflict workflows

## Prerequisites
- Git installed and configured
- GitHub account with access to shiv4n9/GitConflicts repository

## Project Setup and Workflow Commands

### Phase 1: Repository Initialization

1. **Initialize the repository**
   ```bash
   git init
   ```

2. **Add initial files**
   ```bash
   git add calculator.py README.md
   ```

3. **Make initial commit**
   ```bash
   git commit -m "Initial commit: Add calculator.py and README.md"
   ```

4. **Connect to GitHub remote**
   ```bash
   git remote add origin https://github.com/shiv4n9/GitConflicts.git
   git branch -M main
   git push -u origin main
   ```

### Phase 2: Step A - Create Feature One Branch

5. **Create and checkout feature-one branch**
   ```bash
   git checkout -b feature-one
   ```

6. **Edit line 5 of README.md**
   - Open README.md in your editor
   - Change line 5 from "- Basic arithmetic operations" to "- Feature One Implemented"
   - Save the file

7. **Commit the changes**
   ```bash
   git add README.md
   git commit -m "Add Feature One implementation"
   ```

8. **Push feature-one branch**
   ```bash
   git push -u origin feature-one
   ```

### Phase 3: Step B - Merge Feature One

9. **Switch back to main branch**
   ```bash
   git checkout main
   ```

10. **Merge feature-one into main**
    ```bash
    git merge feature-one
    ```

11. **Push updated main**
    ```bash
    git push origin main
    ```

### Phase 4: Step C - Create Feature Two Branch (from original state)

12. **Find the commit hash before the merge (use git log to identify)**
    ```bash
    git log --oneline
    ```

13. **Checkout the commit before Step B's merge**
    ```bash
    git checkout HEAD~1
    ```
    *Note: Replace HEAD~1 with the actual commit hash if needed*

14. **Create feature-two branch from this point**
    ```bash
    git checkout -b feature-two
    ```

15. **Edit the same line 5 of README.md**
    - Open README.md in your editor
    - Change line 5 from "- Basic arithmetic operations" to "- Feature Two Added"
    - Save the file

16. **Commit the changes**
    ```bash
    git add README.md
    git commit -m "Add Feature Two implementation"
    ```

17. **Push feature-two branch**
    ```bash
    git push -u origin feature-two
    ```

### Phase 5: Step D - Trigger the Conflict

18. **Switch back to main branch**
    ```bash
    git checkout main
    ```

19. **Attempt to merge feature-two (this will create the conflict)**
    ```bash
    git merge feature-two
    ```
    *Expected output: CONFLICT (content): Merge conflict in README.md*

### Phase 6: Resolve the Conflict

20. **Check the status to see conflicted files**
    ```bash
    git status
    ```

21. **View the conflict in README.md**
    ```bash
    cat README.md
    ```
    *You'll see conflict markers like:*
    ```
    <<<<<<< HEAD
    - Feature One Implemented
    =======
    - Feature Two Added
    >>>>>>> feature-two
    ```

22. **Manually edit README.md to resolve the conflict**
    - Open README.md in your editor
    - Replace the conflicted section with your desired resolution, for example:
    ```
    - Feature One Implemented and Feature Two Added
    ```
    - Remove all conflict markers (<<<<<<< HEAD, =======, >>>>>>> feature-two)
    - Save the file

23. **Add the resolved file**
    ```bash
    git add README.md
    ```

24. **Check status to confirm resolution**
    ```bash
    git status
    ```

25. **Commit the merge resolution**
    ```bash
    git commit -m "Resolve merge conflict: Combine Feature One and Feature Two"
    ```

26. **Push the resolved merge**
    ```bash
    git push origin main
    ```

### Phase 7: Cleanup (Optional)

27. **Delete feature branches locally**
    ```bash
    git branch -d feature-one
    git branch -d feature-two
    ```

28. **Delete feature branches on remote**
    ```bash
    git push origin --delete feature-one
    git push origin --delete feature-two
    ```

## Summary

This workflow demonstrates:
- Creating branches from different points in history
- Intentionally creating merge conflicts by editing the same line
- Using Git commands to identify and resolve conflicts
- Proper conflict resolution workflow

## Key Commands for Conflict Resolution
- `git status` - Shows conflicted files
- `git diff` - Shows the differences
- Manual editing - Remove conflict markers and choose final content
- `git add <file>` - Stage resolved files
- `git commit` - Complete the merge

## Expected Final State
- README.md line 5 contains the combined feature text
- Both feature branches are merged into main
- Clean commit history showing the conflict resolution