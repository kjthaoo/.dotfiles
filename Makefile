#Let the linux target run the "./bin/linux.sh" script
linux: clean
	chmod +x ./bin/linux.sh
	./bin/linux.sh

#Let the clean target run the "./bin/cleanup.sh" script. Reminder to set the permissions on the .sh files for execute permissions and the linux target hould have dependeny on the clean target.
clean:
	chmod +x ./bin/cleanup.sh
	./bin/cleanup.sh
