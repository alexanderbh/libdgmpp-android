namespace dgmpp {

    %nodefaultctor SqliteConnector;

    class SqliteConnector : public dgmpp::SqlConnector
    {
        public:
        SqliteConnector(const char* databasePath);
    };

}
