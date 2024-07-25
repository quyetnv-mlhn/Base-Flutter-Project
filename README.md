# Flutter Base Project

This is a base Flutter project structured according to the **Very Good Architecture** and utilizing the BLoC pattern for state management. This project structure provides a solid foundation for building scalable and maintainable Flutter applications.

## Architecture

This project follows the [Very Good Architecture](https://verygood.ventures/blog/very-good-flutter-architecture?ref=dailydev) principles, which is based on Clean Architecture and provides a clear separation of concerns. The main layers are:

- **Presentation**: Contains UI components and BLoCs for state management.
- **Domain**: Houses the business logic and use cases of the application.
- **Data**: Manages data sources and repositories.

## Project Structure

The project structure is organized as follows:

```
lib/
├── core/
│   ├── network/
│   ├── utils/
│   ├── error/
│   └── theme/
├── app/
├── feature/
│   └── home/
│       └── presentation/
│           ├── pages/
│           ├── widgets/
│           └── bloc/
├── data/
│   ├── repositories/
│   ├── datasources/
│   │   ├── remote/
│   │   └── local/
│   └── models/
├── domain/
│   └── repositories/
├── main.dart
└── injection_container.dart
```

## Getting Started

To set up this base project structure, follow these steps:

1. Ensure you have Flutter installed on your machine.
2. Create a new Flutter project:
   ```
   flutter create your_project_name
   ```
3. Navigate to your project directory:
   ```
   cd your_project_name
   ```
4. Create a new file named `generate_flutter_project.sh` in the root of your project:
   ```
   touch generate_flutter_project.sh
   ```
5. Open `generate_flutter_project.sh` in a text editor and paste the content of the generation script (provided separately).
6. Make the script executable:
   ```
   chmod +x generate_flutter_project.sh
   ```
7. Run the script to generate the project structure:
   ```
   ./generate_flutter_project.sh
   ```

## Next Steps

After generating the project structure:

1. Review the generated folders and files.
2. Start implementing your features within the `feature` directory.
3. Use the `core` directory for shared utilities and components.
4. Implement your data sources and repositories in the `data` directory.
5. Define your domain entities and repository interfaces in the `domain` directory.

## Contributing

Contributions to improve this base project are welcome. Please feel free to submit issues and pull requests.

## License

This project is open source and available under the [MIT License](LICENSE).