# Welcome!
- This readme should open up at same time as the VS code container. 
- Database & Apex install is ongoing in the background. 

## Important Notes
1. The system will open up to VS code editor as its installing in the background.
2. To view the progress of the install, check out docker_log.txt or use these commands in the terminal below:
- Useful terminal commands
```
#view containers
docker ps
#view container logs
docker logs mission-app
```
3. !!! If there are any persistent data changes, you might want to back up the `db-vol` directory, which contains the database data.

## Access Database & Apex
After install,  your application becomes available at the URL based on port forwared in code(8181).  
- https://CODESPACENAME-PORT.app.github.dev

For example:
- https://probable-halibut-p97rvgw99p93rx99-8181.app.github.dev

## Feedback & Contributions

New to codespaces, so feedback & contributions are welcome.



