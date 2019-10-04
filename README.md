# linkerd/checkout docker action

This action is based on the useful and ubiquitous [GitHub Checkout Action](https://github.com/actions/checkout).

The primary difference being this action checks out your repo using the GitHub
[PullRequestEvent](https://developer.github.com/v3/activity/events/types/#pullrequestevent)
or [PushEvent](https://developer.github.com/v3/activity/events/types/#pushevent)
that initiated the action.

Specifically, it merges `event.pull_request.head.sha` into
`event.pull_request.base.sha`. This guarantees that all jobs within a single
GitHub Actions workflow receive the exact same copy of the code.

The [GitHub Checkout Action](https://github.com/actions/checkout) relies on
`/refs/remotes/pull/:PR/merge`, which can vary if either your PR's head or
master changes during the Workflow.

Here's a detailed issue report that this action is intended to solve:
https://github.com/actions/checkout/issues/27

## Usage

See [action.yml](action.yml)

Basic:

```yaml
steps:
- uses: linkerd/checkout@master
- run: go test ./...
```
