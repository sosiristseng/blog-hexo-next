# Parallel Matgrxi build of Gitlab CI/CD


Test and build in parallel with matrix build in Gitlab CI/CD. An example `.gitlab-ci.yml`

```yml
test:
  image: $IMAGE
  script:
    - python -V
  parallel:
    matrix:
      - IMAGE: ['python:3.6-alpine', 'python:3.7-alpine']
```

<!--more-->

