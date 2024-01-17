# Pontian Greek Society "Xeniteas" of Chicago

    pontiangreeks.org

## Notes

- Due to losing the original hosting provider, all site content was lost
- The content in the repository's initial commit was extracted from the [Wayback Machine](web.archive.org)
- Files that were not recovered from the Web Archive:
  - /assets/images/2016/10/ottoman-turks-10th-century.jpg
  - /assets/images/2016/10/crusaders-constantinople-1204.jpg
  - /assets/images/2016/10/ottoman-state-formation-1299.jpg
  - /assets/images/2016/10/turks-occupy-greece-1458.jpg
  - /assets/images/2016/10/forced-conversion-to-islam-17th-century.jpg
  - /assets/images/2016/10/greece-independance-1832.jpg
  - /assets/images/2016/10/russian-turkish-war-1877.jpg
  - /assets/images/2016/10/greeeks-leave-pontus-1880.jpg
  - /assets/images/2016/10/armenian-massacre-1894.jpg
  - /assets/images/2016/10/balkan-wars-1912.jpg
  - /assets/images/2016/10/deportation-of-greeks-1914.jpg
  - /assets/images/2016/10/world-war-one-1915.jpg
  - /assets/images/2016/10/pontian-greek-fighters-resist-1920.jpg
  - /assets/images/2016/10/armenian-genocide-begins-1915.jpg
  - /assets/images/2016/10/moving-to-anatolia-1916.jpg
  - /assets/images/2016/10/ottoman-empire-partitioning-1918.jpg
  - /assets/images/2016/10/greek-army-lands-in-smyrna-1919.jpg
  - /assets/images/2016/10/second-phase-pontian-greek-genocide-1922.jpg
  - /assets/images/2016/10/treaty-of-serves-1920.jpg
  - /assets/images/2016/10/smyrna-defeat-1922.jpg
  - /assets/images/2016/10/last-survivor-leaves-turkey-1924.jpg
  - /assets/images/2016/10/dialect-233x300.jpg
  - /assets/images/2016/10/Hellenism_Romiosoni-is-lost.pdf
  - /assets/images/2016/10/An-Eagle-Soared-to-the-Heights.pdf
  - /assets/images/2016/10/All-our-ships.pdf
  - /assets/images/2016/04/g-lipiridis_opt.jpg
  - /assets/images/2016/04/Kerasounta-Woman.jpg
  - /assets/images/2016/10/Thea-Kereki.jpg
  - /assets/images/2016/10/Christos-Iliadis.jpg
  - /assets/images/2016/10/Elena-Lazaridou.jpg
  - /assets/images/2016/10/american-accounts.jpg
  - /assets/images/2016/10/eleftherios-venizelos.jpg
  - /assets/images/2016/10/the-asia-minor-catastrophe.jpg
  - /assets/images/2016/10/the-greek-refugee-crisis.jpg
  - /assets/images/2016/10/The-Great-Betrayal.jpg
  - /assets/images/2016/10/theia-halo.jpg
  - /assets/images/2016/10/twenty-three.jpg
  - /assets/images/2016/12/Genocide-of-Greeks-in-Turkey_Back-191x300.jpg
  - /assets/images/2016/04/georgakas-300x201.jpg
  - /assets/images/2016/04/Hatzidimitriou-300x201.jpg
  - /assets/images/2016/04/Dr-Hovannisian-300x207.jpg
  - /assets/images/2016/04/Akcam-300x225.jpg
  - /assets/images/2016/04/Dr.-H.-Psomiades-300x200.jpg
  - /assets/images/2016/10/Fotiadis-300x240.jpg
  - /assets/images/2016/10/greek-the-genocide-continues.pdf
  - All youth group photos

## Local Prerequisites

- Node
- NPM
- Install javascript packages: `npm install`

## Local Development

`npm run dev`: Web server

`npm run lint`: Linting, this overwrittes local files

`npm run generate`: Generate static files in the .output directory

## Deployment Prerequisites

- AWS CLI

## Deploy Script

- `deplpoy.sh preview`
  - Deploys to the preview site: http://pontiangreeks.preview.s3-website.us-east-2.amazonaws.com
- `deplpoy.sh`
  - Deploys to the production site:
  * http://pontiangreeks.s3-website.us-east-2.amazonaws.com
  * https://www.pontiangreeks.org
