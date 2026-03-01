# Models

This folder contains JSON files referenced by QC-Atlas implementation packages
(`low_code_modeler` and `qhana_plugin`). The file name in this folder must match
`public.file.fileurl` in the SQL seed data.

## Add a new model file
1. Add the JSON file to this folder with a stable, unique file name.
2. Register the file in the SQL seed data under `example-data/SQL/backup-files`:
   - Add a `public.file` row where `fileurl` and `name` equal the file name.
   - Add a `public.file_data` row with the JSON content for that file.
   - Link the file to an `implementation_package` via
     `public.implementation_package_file`.
   - Set `implementation_package.type` to `low_code_modeler`,
     `qhana_plugin`, or `workflow_editor`.
   - If needed, insert the `algorithm`, `implementation`, and
     `implementation_package` entries first.
3. Rebuild or re-seed the database so the SQL files are applied.

Tip: The easiest workflow is to insert/update data in a running database and
export a new SQL data file using pgAdmin (see `../../docs/SQLExport.md`) rather
than hand-editing `file_data` hex blobs.

## Setup QC-Atlas with local content
From the repo root:

```bash
docker build -t atlas-content-db planqk-atlas-content
docker build -t atlas qc-atlas
docker network create qc-atlas-net

docker run -d --name qc-atlas-db --network qc-atlas-net \
  -e POSTGRES_DB=db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres \
  -v "$PWD/planqk-atlas-content:/var/qc-atlas/testdata" -p 5432:5432 \
  atlas-content-db

docker run -d --name qc-atlas --network qc-atlas-net -p 6626:6626 \
  -e POSTGRES_HOSTNAME=qc-atlas-db -e POSTGRES_PORT=5432 \
  -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=db \
  atlas
```

The DB image loads SQL from `example-data/SQL/backup-files` in the mounted
content repo.

## Access data
- File content endpoint:
  `GET http://localhost:6626/atlas/algorithms/{algorithmId}/implementations/{implementationId}/implementation-packages/{packageId}/file/content`
- List algorithms:
  `GET http://localhost:6626/atlas/algorithms`
- List implementations for an algorithm:
  `GET http://localhost:6626/atlas/algorithms/{algorithmId}/implementations`
