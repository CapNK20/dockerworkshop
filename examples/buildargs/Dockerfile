FROM mcr.microsoft.com/dotnet/sdk:8.0
ARG version=1.2.3

WORKDIR /app

COPY . .
RUN dotnet build /p:Version=$version --version-suffix rc &&  bin/Debug/net8.0/buildargs
# RUN dotnet publish --no-build

CMD /app/bin/Debug/net8.0/buildargs
