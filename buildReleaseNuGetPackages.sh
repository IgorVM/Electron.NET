echo "Start building Electron.NET dev stack..."
# Set the Electron.Net Version Number
ENETVER=19.1.6
echo "Restore & Build API"
cd ElectronNET.API && \
dotnet restore && \
dotnet build --configuration Release --force /property:Version=$ENETVER && \
dotnet pack /p:Version=$ENETVER --configuration Release --force --output "artifacts";
cd ../;
echo "Restore & Build CLI"
cd ElectronNET.CLI && \
dotnet restore && \
dotnet build --configuration Release --force /property:Version=$ENETVER && \
dotnet pack /p:Version=$ENETVER --configuration Release --force --output "artifacts";