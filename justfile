build:
    cd ../bpmn-parser && just prepare-doc-site
    npx antora antora-playbook.yml
