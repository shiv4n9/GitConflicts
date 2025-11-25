#!/bin/bash

echo "========================================"
echo "Git Merge Conflict Workflow Execution"
echo "========================================"
echo

echo "Phase 1: Repository Initialization"
echo "-----------------------------------"
echo "1. Initializing repository..."
git init
if [ $? -ne 0 ]; then
    echo "ERROR: Git not found or failed to initialize"
    exit 1
fi

echo "2. Adding initial files..."
git add calculator.py README.md git-merge-conflict-workflow.md
git status

echo "3. Making initial commit..."
git commit -m "Initial commit: Add calculator.py and README.md"

echo "4. Setting up main branch..."
git branch -M main
echo "NOTE: GitHub remote configured for: https://github.com/shiv4n9/GitConflicts.git"
git remote add origin https://github.com/shiv4n9/GitConflicts.git
echo

echo "Phase 2: Step A - Create Feature One Branch"
echo "--------------------------------------------"
echo "5. Creating and checking out feature-one branch..."
git checkout -b feature-one

echo "6. Current README.md content:"
cat README.md
echo

echo "7. Editing line 5 of README.md for Feature One..."
sed -i 's/- Basic arithmetic operations/- Feature One Implemented/' README.md

echo "8. Updated README.md content:"
cat README.md
echo

echo "9. Committing Feature One changes..."
git add README.md
git commit -m "Add Feature One implementation"
echo

echo "Phase 3: Step B - Merge Feature One"
echo "------------------------------------"
echo "10. Switching back to main branch..."
git checkout main

echo "11. Merging feature-one into main..."
git merge feature-one

echo "12. Current git log:"
git log --oneline -5
echo

echo "Phase 4: Step C - Create Feature Two Branch"
echo "--------------------------------------------"
echo "13. Getting commit before merge..."
git log --oneline -3

echo "14. Checking out commit before merge (HEAD~1)..."
git checkout HEAD~1

echo "15. Creating feature-two branch from this point..."
git checkout -b feature-two

echo "16. Current README.md content:"
cat README.md
echo

echo "17. Editing same line 5 for Feature Two..."
sed -i 's/- Basic arithmetic operations/- Feature Two Added/' README.md

echo "18. Updated README.md content:"
cat README.md
echo

echo "19. Committing Feature Two changes..."
git add README.md
git commit -m "Add Feature Two implementation"
echo

echo "Phase 5: Step D - Trigger the Conflict"
echo "----------------------------------------"
echo "20. Switching back to main branch..."
git checkout main

echo "21. Current main branch README.md:"
cat README.md
echo

echo "22. Attempting to merge feature-two (THIS WILL CREATE A CONFLICT)..."
git merge feature-two
echo

echo "Phase 6: Resolve the Conflict"
echo "------------------------------"
echo "23. Checking status to see conflicted files..."
git status
echo

echo "24. Viewing the conflict in README.md:"
cat README.md
echo

echo "25. MANUAL STEP REQUIRED:"
echo "   - Open README.md in your text editor"
echo "   - Look for conflict markers: <<<<<<< HEAD, =======, >>>>>>> feature-two"
echo "   - Replace the conflicted section with: '- Feature One Implemented and Feature Two Added'"
echo "   - Remove all conflict markers"
echo "   - Save the file"
echo
read -p "Press Enter after you've manually resolved the conflict..."

echo "26. Adding the resolved file..."
git add README.md

echo "27. Checking status to confirm resolution..."
git status

echo "28. Committing the merge resolution..."
git commit -m "Resolve merge conflict: Combine Feature One and Feature Two"

echo "29. Final README.md content:"
cat README.md
echo

echo "30. Final git log:"
git log --oneline -5
echo

echo "========================================"
echo "Workflow Complete!"
echo "========================================"
echo "Summary:"
echo "- Created merge conflict by editing same line in different branches"
echo "- Manually resolved conflict by combining both features"
echo "- Demonstrated complete Git conflict resolution workflow"
echo
echo "Optional cleanup commands:"
echo "git branch -d feature-one"
echo "git branch -d feature-two"
echo