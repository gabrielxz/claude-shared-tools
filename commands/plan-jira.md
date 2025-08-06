#!/usr/bin/env claude-code

# /plan-jira Command
# Usage: /plan-jira <JIRA-ISSUE-ID>
# This command reads a Jira issue, researches docs, reviews code, and creates an implementation plan

## Workflow Steps

1. **Extract Jira Issue Content**
   - Use the Atlassian MCP to fetch the issue details
   - Extract: summary, description, acceptance criteria, and any technical requirements

2. **Research Documentation**
   - Identify relevant technologies/libraries mentioned in the issue
   - Use Context7 MCP to fetch up-to-date documentation
   - Focus on implementation patterns and best practices

3. **Review Project Code**
   - Scan for related files and existing patterns
   - Identify integration points
   - Check for similar implementations
   - Review coding standards in CLAUDE.md

4. **Deep Analysis & Planning**
   - **IMPORTANT**: Only plan for features explicitly stated in the Jira issue
   - Do NOT add extra features or enhancements beyond the requirements
   - Supporting infrastructure (error handling, validation) is acceptable if needed
   - Think through implementation approach
   - Consider edge cases and testing requirements
   - Break down into discrete, testable steps
   - Identify potential risks or dependencies

5. **Present Plan**
   - Format as structured markdown
   - Include:
     - Overview (exactly what the Jira requires, no extras)
     - Technical approach
     - Step-by-step implementation plan
     - Testing strategy
     - Potential risks/considerations
   - Ask EXACTLY: "Does this plan look good? Should I save it to ./context/<JIRA-ISSUE-ID>.md?"
   - DO NOT ask about proceeding with implementation
   - ONLY ask about saving the plan document

6. **Document Plan**
   - Upon approval, save to: `./context/<JIRA-ISSUE-ID>.md`
   - Include all research findings and implementation details

## Command Implementation

When invoked with `/plan-jira ISSUE-123`:

```
1. Fetch Jira issue ISSUE-123
2. Extract key technologies/libraries
3. Research each via Context7
4. Analyze local codebase
5. Generate comprehensive plan
6. Present and await approval
7. Save to ./context/ISSUE-123.md
```