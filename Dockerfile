{FROM microsoft/dotnet:1.1.0-sdk-projectjson
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-bin/Release/PublishOutput}  .
ENTRYPOINT ["dotnet", "dockergithub.dll"]
