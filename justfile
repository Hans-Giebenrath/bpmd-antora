build:
    cd ../bpmn-parser && just prepare-doc-site
    npx antora antora-playbook.yml

publish:
    ls ../gh-pages || git worktree add ../gh-pages gh-pages
    rsync -a --delete build/site/ ../gh-pages/ --exclude=/.git
    cd ../gh-pages && touch .nojekyll && git add . && git commit --amend -m 'pages' && git push --force origin gh-pages
