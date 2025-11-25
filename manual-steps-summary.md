# Git Merge Conflict Workflow - Manual Execution Summary

## Repository Information
- **GitHub Repository:** https://github.com/shiv4n9/GitConflicts
- **Project Name:** GitConflicts
- **Purpose:** Educational demonstration of Git merge conflict workflows

## Manual Execution Guide

## Quick Start Options

### Option 1: Run the Batch File (Windows)
```cmd
execute-git-workflow.bat
```

### Option 2: Run the Shell Script (Linux/Mac)
```bash
chmod +x execute-git-workflow.sh
./execute-git-workflow.sh
```

### Option 3: Execute Commands Manually
Follow the commands in `git-merge-conflict-workflow.md`

## Key Manual Step During Execution

When you reach **Step 25** (conflict resolution), you'll need to:

1. **Open README.md in your text editor**
2. **Look for this conflict pattern:**
   ```
   <<<<<<< HEAD
   - Feature One Implemented
   =======
   - Feature Two Added
   >>>>>>> feature-two
   ```

3. **Replace the entire conflicted section with:**
   ```
   - Feature One Implemented and Feature Two Added
   ```

4. **Save the file and continue with the script**

## Expected Results

After completion, you'll have:
- ✅ Demonstrated creating branches from different points
- ✅ Intentionally created a merge conflict
- ✅ Manually resolved the conflict
- ✅ Clean commit history showing the resolution process
- ✅ Combined both features in the final README.md

## Files Created for Your Assignment

1. `calculator.py` - The Python project file
2. `README.md` - The file where conflicts occur
3. `git-merge-conflict-workflow.md` - Detailed step-by-step guide
4. `execute-git-workflow.bat` - Automated Windows script
5. `execute-git-workflow.sh` - Automated Linux/Mac script
6. `manual-steps-summary.md` - This summary file

## Repository Access
The complete workflow is now available at: https://github.com/shiv4n9/GitConflicts

You now have everything needed to complete your Git merge conflict assignment!