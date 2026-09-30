---
name: tech-writing
description: Use when writing, editing, or reviewing software engineering documentation such as READMEs, how-to guides, runbooks, ADRs, design docs, API docs, or code comments, and the text must be clear, concise and scannable.
---

# Tech Writing

Technical text is read to act or decide. Write it so the reader can do that with the least effort.

For commit messages and pull-request descriptions, a dedicated skill (such as `commit` or `pull-request`) defines the format. This skill only applies to their prose.

## Structure

- Conclusion or answer first, then the reasons.
- Favor bullet points to paragraphs.
- Headings state the point ("Retries are capped at 3"), not the topic ("Retries").
- Lists for parallel items, tables for comparisons, numbered imperatives for steps.
- Concrete verbs.

## Show, don't claim

An exact command or a runnable example beats a description. Use real values.

## Language

Write in the language of the input, English by default. Keep code identifiers, commands and error messages untranslated.

## Final pass

Check each item before handing the text over. Fix what fails, don't just tick it. The word, sentence and paragraph limits come from ASD-STE100 (Simplified Technical English).

### Words

- [ ] Each term is the same in all of the text. There are no synonyms.
- [ ] Each abbreviation has its full term at the first use.
- [ ] English only: no noun cluster has more than three nouns. Names of APIs, classes and config keys are exceptions.

### Sentences

- [ ] Each procedural sentence has 20 words or less.
- [ ] Each descriptive sentence has 25 words or less.
- [ ] Each instruction is in the imperative.
- [ ] Each sentence is in the active voice, or the passive voice is necessary.
- [ ] Each sentence has one topic.
- [ ] English only: each verb tense is simple (present, past or future) or the present perfect.

### Structure

- [ ] The opening states what the reader must do or decide.
- [ ] Each paragraph has six sentences or less.
- [ ] Each paragraph has one topic.
- [ ] Each step has one instruction.
- [ ] Each condition comes before its action.
- [ ] Each sentence changes what the reader knows or does.

### Code and commands

- [ ] Each identifier, path, flag, environment variable and config key is in inline code.
- [ ] Each command can be copy-pasted as is: no `$` prompt, and placeholders look like `<service-name>`.
- [ ] Each code block names its language, and shows the expected output when that output is how the reader checks success.
- [ ] Each error message is quoted word for word.

### Precision

- [ ] Each value has its unit and exact number: "timeout of 30 s", not "a short timeout".
- [ ] Prerequisites and versions come before the steps.
- [ ] No word goes stale ("currently", "new", "recently", "soon"). Use a version or an absolute date.

### Maintenance

- [ ] Content owned by a single source (OpenAPI spec, config schema, code) is linked, not copied.
- [ ] Code comments and ADRs explain why. The code already shows what.

### Safety

- [ ] Examples contain no real secrets, tokens, internal hostnames or customer data.
- [ ] Each destructive command (`DROP`, `rm -rf`, `--force`) has a warning before it.

### Accuracy

- [ ] Each technical name, path and flag is the same as in the source.
- [ ] Each command was run, or is marked as not run.
- [ ] Each claim traces to the source. Unverified claims are flagged, not stated as facts.
