# https://www.keycloak.org/server/containers

FROM quay.io/keycloak/keycloak:21.1.1 as builder

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure a database vendor
ENV KC_DB=postgres

WORKDIR /opt/keycloak
# for demonstration purposes only, please make sure to use proper certificates in production instead
RUN keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:21.1.1
COPY --from=builder /opt/keycloak/ /opt/keycloak/

# change these values to point to a running postgres instance
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://${HOST}:${POSTGRES_PORT}/database
ENV KC_DB_USERNAME=${POSTGRES_USERNAME}
ENV KC_DB_PASSWORD=${POSTGRES_PASSWORD}
ENV KC_HOSTNAME=${HOST}:${POSTGRES_PORT}
ENTRYPOINT ["/entrypoint.sh"]
