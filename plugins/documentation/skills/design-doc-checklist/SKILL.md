---
name: design-doc-checklist
description: Use when writing or finalizing a tech design doc, to validate that all necessary topics (error handling, security, testing, delivery, observability, operations, cost) are covered.
---

# Design Doc Checklist

A design doc is only ready when it covers every topic below. This skill checks coverage, not prose quality; for the prose, use `tech-writing`.

## Rule

Every topic must appear in the doc. If a topic is not relevant, name it anyway and give the reason in one short sentence, e.g. "Rate limiting: not applicable, only one internal batch job calls this endpoint." A topic that is missing without a reason is a failure.

## Checklist

Check each item against the doc. Fix what fails: write the missing section, or the one-sentence rationale. Don't just tick.

### Behavior

- [ ] **Error handling**: failure modes, how each is detected, and what the caller sees.
- [ ] **Idempotency**: which operations can be retried safely, and how duplicates are detected.
- [ ] **Message queuing**: queues or topics, delivery guarantees, ordering, retries and dead-letter handling.

### Security

- [ ] **Authentication**: how callers prove who they are.
- [ ] **Authorization**: who may do what, and where it is enforced.
- [ ] **Secrets management**: where secrets are stored, how they are injected and rotated.
- [ ] **Rate limiting**: limits per caller, with units, and the behavior when exceeded.

### Data and performance

- [ ] **Caching**: what is cached, for how long, and how it is invalidated.
- [ ] **Database query optimization**: expected queries, indexes, and expected data volume.
- [ ] **Database migrations**: schema changes, ordering with the code deployment, and rollback.

### Delivery

- [ ] **Automated testing**: test levels, and what each covers.
- [ ] **Continuous integration**: the checks that run on every change.
- [ ] **Continuous deployment**: how the change reaches production, including rollout and rollback.

### Operations

- [ ] **Observability**: logs, metrics, traces, and wide events if applicable. The signals that show the system is healthy.
- [ ] **Backup and recovery**: what is backed up, and the recovery objectives (RPO, RTO).
- [ ] **Cost monitoring**: the main cost drivers, and how cost is tracked and alerted on.
- [ ] **Incident management**: alerts, owner, runbook, and escalation.
