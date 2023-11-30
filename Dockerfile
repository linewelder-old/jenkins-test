FROM mcr.microsoft.com/dotnet/sdk AS build-env
WORKDIR /app
COPY JenkinsTest/ ./

RUN dotnet publish -o out

FROM mcr.microsoft.com/dotnet/runtime:7.0
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "JenkinsTest.dll"]
