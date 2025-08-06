#!/usr/bin/env claude-code

# /implement-jira Command
# Usage: /implement-jira <JIRA-ISSUE-ID>
# This command reads a plan document and implements it following project standards

## Workflow Steps

1. **Load Implementation Plan**
   - Read from: `./context/<JIRA-ISSUE-ID>.md`
   - Parse implementation steps and requirements

2. **Review Coding Standards**
   - Load CLAUDE.md if exists
   - Extract coding conventions, patterns, and testing requirements
   - Note any project-specific guidelines

3. **Execute Implementation**
   - Follow the plan step-by-step
   - Apply coding standards from CLAUDE.md
   - Create/modify files as specified
   - Add appropriate error handling
   - Ensure code is well-structured and maintainable

4. **Run Tests**
   - Check CLAUDE.md for "testing" section
   - If found, execute all specified test commands
   - If tests fail:
     - Analyze failures
     - Fix issues
     - Re-run tests
     - Repeat until all tests pass
   - If no testing section exists, skip this step

5. **Update Documentation**
   - If new patterns or conventions were established:
     - Update CLAUDE.md with relevant information
     - Document any new testing requirements
     - Add helpful context for future implementations

6. **Final Status Report**
   - Confirm all tests are passing
   - List all files created/modified
   - Note any deviations from the original plan
   - Inform user that changes are ready for review and commit

## Command Implementation

When invoked with `/implement-jira ISSUE-123`:

```
1. Load ./context/ISSUE-123.md
2. Load CLAUDE.md (if exists)
3. Implement according to plan
4. Run tests from CLAUDE.md testing section
5. Troubleshoot until tests pass
6. Update CLAUDE.md if needed
7. Report completion status
```

## Important Notes

- Never auto-commit or push changes
- Always follow existing code patterns
- Prioritize test passage before completion
- Document any significant decisions or changes