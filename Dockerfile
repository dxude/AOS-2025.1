# Usando uma imagem oficial do Java 17 (ou outra versão que você usa)
FROM eclipse-temurin:17-jdk

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o JAR gerado para dentro do container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta 8080 (ou outra usada pelo Spring Boot)
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["java", "-jar", "app.jar"]
