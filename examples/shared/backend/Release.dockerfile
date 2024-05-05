FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /build
COPY backend.csproj .
RUN dotnet restore
COPY . .

RUN dotnet build --nologo --no-restore --configuration Release

RUN dotnet publish --nologo --no-restore --no-build --no-self-contained --configuration Release --output /publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

COPY --from=build /publish .

CMD ["dotnet", "backend.dll"]
