FROM nginx:1.26


####

COPY entrypoint.sh /

#https://github.com/docker-library/postgres/issues/296#issuecomment-308735942
RUN chmod +x /entrypoint.sh

EXPOSE 80 110 143 465 587 993 995

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
