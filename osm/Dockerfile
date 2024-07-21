FROM overv/openstreetmap-tile-server

# Copy the region file
COPY chile-latest.osm.pbf /data/region.osm.pbf

# Run the import
RUN /run.sh import

# Entrypoint
CMD ["/run.sh", "run"]
