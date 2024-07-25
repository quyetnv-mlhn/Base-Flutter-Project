#!/bin/bash

# Check if we're in a Flutter project directory
if [ ! -f "pubspec.yaml" ]; then
    echo "Error: Please run this script from the root of your Flutter project (where pubspec.yaml is located)."
    exit 1
fi

# Move into the lib directory
cd lib || exit 1

# Check if we've successfully moved to the lib directory
if [ "$(basename "$PWD")" != "lib" ]; then
    echo "Error: Unable to move to the lib directory. Please check your project structure."
    exit 1
fi

# Create directory structure
mkdir -p core/{network,utils,error,theme} \
         app \
         feature/home/presentation/{pages,widgets,bloc} \
         data/{repositories,datasources/{remote,local},models} \
         domain/repositories

# Create files in the core directory
touch core/network/{api_client.dart,endpoints.dart}
touch core/utils/{constants.dart,date_formatter.dart,string_extensions.dart}
touch core/error/{exceptions.dart,failure.dart}
touch core/theme/{app_colors.dart,app_text_styles.dart}

# Create files in the app directory
touch app/{app_bloc_observer.dart,app.dart}

# Create main.dart file
touch main.dart

# Create files in the feature directory
touch feature/home/presentation/pages/home_page.dart
touch feature/home/presentation/bloc/{home_bloc.dart,home_event.dart,home_state.dart}

# Create files in the data directory
touch data/repositories/story_repository_impl.dart
touch data/datasources/remote/story_remote_data_source.dart
touch data/datasources/local/story_local_data_source.dart

# Create injection_container.dart file
touch injection_container.dart

echo "Project structure has been successfully created in the lib directory!"

# Return to the project root directory
cd ..

echo "Script completed. You are now in directory: $PWD"