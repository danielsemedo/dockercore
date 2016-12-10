FROM microsoft/dotnet:1.1.0-runtime
ARG source
WORKDIR /app
EXPOSE 80
COPY $source .
ENTRYPOINT ["dotnet", "dockergithub.dll"]
