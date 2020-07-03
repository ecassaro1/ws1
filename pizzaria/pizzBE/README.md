
serviço 
    https://pizzbe-srv-spontaneous-toucan-oy.cfapps.us10.hana.ondemand.com/

pra deployar:
    db kind no package.json = hana ou sql
    cds build --clean
    na pasta gen, dentro de db e srv tem os manifest.yaml. Tem que trocar o nome do DB pra pizzaDB
    cf push -f gen\db
    cf push -f gen\srv --random-route


# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File / Folder | Purpose
---------|----------
`app/` | content for UI frontends go here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps...

- Open a new terminal and run  `cds watch`
- ( in VSCode simply choose _**Terminal** > Run Task > cds watch_ )
- Start adding content, e.g. a [db/schema.cds](db/schema.cds), ...


## Learn more...

Learn more at https://cap.cloud.sap/docs/get-started/
