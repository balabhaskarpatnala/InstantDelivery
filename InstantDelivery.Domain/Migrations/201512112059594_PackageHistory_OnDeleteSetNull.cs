namespace InstantDelivery.Domain.Migrations
{
    using System.Data.Entity.Migrations;

    /// <summary>
    /// Ta migracja umo�liwia w��czenie kaskadowego ustawiania warto�ci null podczas usuwania relacji w tabeli historii paczek.
    /// </summary>
    public partial class PackageHistory_OnDeleteSetNull : DbMigration
    {
        /// <summary>
        /// W��cza kaskadowe ustawianie warto�ci null podczas usuwania relacji w tabeli historii paczek.
        /// </summary>
        public override void Up()
        {
            Sql(@"ALTER TABLE [dbo].[PackageHistory] DROP CONSTRAINT [FK_dbo.PackageHistory_dbo.Packages_Package_Id]");
            Sql(@"ALTER TABLE[dbo].[PackageHistory] ADD CONSTRAINT[FK_dbo.PackageHistory_dbo.Packages_Package_Id] FOREIGN KEY([Package_Id])
                    REFERENCES[dbo].[Packages]([Id])
                    ON DELETE SET NULL");

            Sql(@"ALTER TABLE [dbo].[PackageHistory] DROP CONSTRAINT [FK_dbo.PackageHistory_dbo.Employees_Employee_Id]");
            Sql(@"ALTER TABLE[dbo].[PackageHistory] ADD CONSTRAINT[FK_dbo.PackageHistory_dbo.Employees_Employee_Id] FOREIGN KEY([Employee_Id])
                    REFERENCES[dbo].[Employees]([Id])
                    ON DELETE SET NULL");
        }
        /// <summary>
        /// Cofa wprowadzone przez migracj� zmiany.
        /// </summary>
        public override void Down()
        {

        }
    }
}
