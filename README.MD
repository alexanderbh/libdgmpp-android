# Android wrapper for Dogma++

JNI wrapper for Dogma++ for Android

## Requirements
- Android NDK (tested with r10e)
- Probably something more

## Database
The database needed is made from the [https://github.com/mrdepth/libdgmpp](libdgmpp) project. The dbinit script will do that.
Make the database available to the app by placing it in the files folder.

## How to use
The following command to build:

	./build.sh


The following folder contains the native libraries:

	java/libs

Include those in the jniLibs folder.


The following folder contains the JNI classes:

	java/dgmpp

Include those in the project.


## Example of usage
	public class FitEngine {

		private Engine mEngine;

		static {
			System.loadLibrary("dgmpp");
		}
	
		public FitEngine(Context context) {
			SqliteConnector sql = new SqliteConnector(context.getFilesDir().getPath() + "/dgmpp.db");
			mEngine = new Engine(sql);
		}
	
		public Engine getEngine() {
			return mEngine;
		}

	}
