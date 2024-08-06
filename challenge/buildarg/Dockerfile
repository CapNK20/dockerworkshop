FROM mcr.microsoft.com/dotnet/sdk:8.0

WORKDIR /app

COPY . .
RUN dotnet build /p:Version=1.2.3 --version-suffix rc &&  bin/Debug/net8.0/buildargs

CMD ["/app/bin/Debug/net8.0/buildargs"]
