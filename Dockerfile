{FROM microsoft/dotnet:1.1.0-sdk-projectjson
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-bin/Release/netcoreapp1.1/publish}  .
ENTRYPOINT ["dotnet", "dockergithub.dll"]
