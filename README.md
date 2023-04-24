# Configuraciones generales de terminal, aplicaciones y más

Aquí se encontrarán configuraciones que vaya aplicando de diferentes
aplicaciones.

## Git

### Aliases

He configurado una serie de alias para poder utilizar comandos de Git con mayor
facilidad. Algunos los he obtenido del libro **_"Aprendiendo Git" de Midudev_**,
Stack Overflow y algunas otras fuentes.

```bash
alias.ci commit
alias.aa add -A
alias.co-compact-diff show --compact-summary
alias.sh-co-changes show --color --pretty=format:%b
alias.sh-aliases config --get-regexp ^alias
alias.ac !git add -A && git commit
alias.acp !git add -A && git commit && git push
alias.st status
alias.acmp !git add -A && git commit -m \'\' && git push #
alias.ba branch -a
alias.sc switch -c
alias.sh-conf-origin config --list --show-origin --show-scope
alias.sr switch -
alias.sw switch
alias.bm branch -M
alias.pomm pull origin main:main
alias.br branch -d
```
